
import 'dart:convert';
import 'dart:math';

import 'package:logger/logger.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

import '../proto/yang_shi.channel.pb.dart' as $channel;

class YangShi {
  late int _seqid = 1;
  late final String _guid = _genGuid();
  late final String _appid = "ysp_pc";
  late final String _yspappid = "519748109";
  late final String _referer = "https://yangshipin.cn/";
  late final String _origin = "https://yangshipin.cn/";
  late final String _ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36";
  late final String _ctForm = "application/x-www-form-urlencoded;charset=UTF-8";
  late final String _ctJson = "application/json";
  YangShi();

  Future<void> fetchChannel() async {
    final int random = (DateTime.now().millisecondsSinceEpoch/5e3).truncate();
    final response = await http.get(Uri.parse("https://capi.yangshipin.cn/api/oms/pc/page/PG00000004?$random"));

    if (response.statusCode == 200) {
      final channel = $channel.Response.fromBuffer(response.bodyBytes);
      Logger().t(channel.data.feedModuleList[0].dataTvChannelList[0]);
      for(var item in channel.data.feedModuleList[0].dataTvChannelList){
        // items[item.channelType]!.view.add(TabViewItem(item.channelName, item.coverUrl));
      }
    }
  }

  Future<String> fetchAuth(String pid) async {
    final Uri url = Uri.parse("https://player-api.yangshipin.cn/v1/player/auth");
    final String requestId = _genRequestId();
    final Map<String, String> headers = {
      "yspappid": _yspappid,
      "Content-Type": _ctForm,
      "Referer": _referer,
      "Origin": _referer,
      "Cookie": _genCookie(requestId),
    };
    final Map<String, String> data = {
      "pid": pid,
      "guid": _guid,
      "appid": _appid,
      "rand_str": _genRandomString(10),
    };
    data["signature"] = _genSignature(data);
    final response = await http.post(url, headers: headers, body: data);
    return utf8.decode(response.bodyBytes);
  }

  Future<String> fetchToken() async {
    Uri url = Uri.parse("https://h5access.yangshipin.cn/web/open/token");
    final String requestId = _genRequestId();
    final Map<String, String> headers = {
      "Content-Type": _ctJson,
      "Referer": _referer,
      "Origin": _origin,
      "User-Agent": _ua,
      "Cookie": _genCookie(requestId),
    };
    final Map<String, String> data = {
      "yspappid": _yspappid,
      "guid": _guid,
      "vappid": "59306155",
      "vsecret": "b42702bf7309a179d102f3d51b1add2fda0bc7ada64cb801",
      "raw": "1",
      "version": "v1",
      "ts": (DateTime.now().millisecondsSinceEpoch).toString(),
      "rnd": _genRandomString(32),
    };
    url = url.replace(queryParameters: data);
    final response = await http.get(url, headers: headers);
    return utf8.decode(response.bodyBytes);
  }

  Future<String> fetchLiveInfo() async {
    Uri url = Uri.parse("https://player-api.yangshipin.cn/v1/player/get_live_info");
    final String requestId = _genRequestId();
    final Map<String, String> headers = {
      "Content-Type": _ctJson,
      "Referer": _referer,
      "Origin": _origin,
      "User-Agent": _ua,
      "Cookie": _genCookie(requestId),
      "seqid": _genSeqid(),
      "yspappid": "",
      "yspplayertoken": "",
      "yspsdkinput": "",
      "yspsdksign": "",
      "yspticket": "",
    };
    final Map<String, String> data = {
      "adjust": '1',  //传入参数
      "appVer": 'V1.0.0', //固定值
      "app_version": 'V1.0.0', //固定值
      // r : cnlid, u : 时间戳, o : version, f : guid, c : platform
      "cKey": '--01ED81AD0F7291EF7632AC9097BB7AAFC4947782277C16EC49EB37D56967E2145E585B0AE4F803BD8E2208C01AEC5068BC8F240C2F53065E277A2CCC2F266E7A8E5A179C9B5815111090E3CED8C1DAE918019C025CAC60E9274D1B42A2DA81B0F1DA4B8892150753D4A037E3C17B07B07598A67945A51F2AEFC53AA87B140EF22DF3A5AE976EBB3288D375096E617D565571CB568AF72535825E50C753A2680FF9',
      "channel": 'ysp_tx', //固定值
      "cmd": "2", //固定值
      "cnlid": "2024078201", //固定值 steamId
      "defn": "fhd", //清晰度
      "devid": "devid", //固定值
      "dtype": "1", //固定值
      "encryptVer": "8.1", //固定值
      "guid": "mmiynfg9_swwffh4ialb",
      "livepid": "600001859",
      "otype": "ojson", //固定值
      "platform": "5910204", //固定值
      "rand_str": "3tIuUtpItl",
      "signature": "e728951db7be0eae71d195951d0bd1cf", //0f$IVHi9Qno?G
      "sphttps": "1", //固定值
      "stream": "2", //
    };
    url = url.replace(queryParameters: data);
    final response = await http.post(url, body: data, headers: headers);
    return utf8.decode(response.bodyBytes);
  }


  String _genSeqid() {
    _seqid += 1;
    return _seqid.toString();
  }

  String _genGuid() {
    return '${DateTime.now().microsecondsSinceEpoch.toRadixString(36)}_${Random().nextInt(1<<30).toRadixString(36)}';
  }

  String _genCookie(String requestId) {
    final cookies = {
      "guid": _guid,
      "versionName": "99.99.99",
      "versionCode": "999999",
      "vplatform": "109",
      "platformVersion": "Chrome",
      "deviceModel": "146",
      "newLogin": "1",
      "pc_version": "1.1.16",
      "ysp_uinfo_pc": "",
      "updateProtocol": "1",
      "nseqId": "1",
      "nrequest-id": requestId,
    };
    return cookies.keys.map((key) => "$key=${cookies[key]}").toList().join(";");
  }

  String _genRequestId() {
    return "99999${_genRandomString(10)}${DateTime.now().microsecondsSinceEpoch}";
  }

  String _genRandomString(int length) {
    final random = Random();
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
  }

  String _genSignature(Map<String, dynamic> data) {
    final buffer = StringBuffer();
    // 获取所有键并排序
    final keys = data.keys.toList()..sort();

    for (int i = 0; i < keys.length; i++) {
      final key = keys[i];
      // 第一个参数前不加 &，之后的加 &
      if (i != 0) {
        buffer.write('&');
      }

      var value = data[key];
      String valueStr;
      // 处理 null、数组及其他类型，确保得到字符串
      if (value == null) {
        valueStr = 'null';
      } else if (value is List) {
        // 数组用逗号连接成字符串
        valueStr = value.join(',');
      } else {
        valueStr = value.toString();
      }

      final decodedValue = Uri.decodeComponent(valueStr);
      buffer.write('$key=$decodedValue');
    }

    buffer.write('n@7QKk%YeSjfw%22');
    return md5.convert(utf8.encode(buffer.toString())).toString();
  }
}