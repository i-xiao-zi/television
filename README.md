# television

## 脱机运行虚拟机
cd D:\Dev\SDK\Android\Sdk\emulator
.\emulator -list-avds
.\emulator -avd <你的模拟器名字>

cd /d/Dev/SDK/Android/emulator
./emulator -list-avds
./emulator -avd Television_1080p

protoc --dart_out=. --plugin=protoc-gen-dart=C:\Users\Administrator\AppData\Local\Pub\Cache\bin\protoc-gen-dart.bat yangshi.proto