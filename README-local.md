# Windows 本機展示

## CLion 編譯（Visual Studio）

以 CLion 開啟本資料夾，重新載入 CMake，選擇 `clion-msvc-debug` 預設與 `Responsive_ScadaApp` 目標後 Build。此預設使用既有的 `Visual Studio` toolchain 和 `C:/Qt/6.8.3/msvc2022_64`，並提供 Qt 執行環境。

原有 `Debug-Visual Studio` profile 也已改用短路徑。如果 CLion 保留了舊設定，請在 Settings → Build, Execution, Deployment → CMake 將 Build directory 設為 `$PROJECT_DIR$/../b-msvc`，然後 Reload CMake Project。CMake options 為 `-G Ninja -DCMAKE_PREFIX_PATH=C:/Qt/6.8.3/msvc2022_64 -DLINK_INSIGHT=OFF`。

建置輸出為 `../b-msvc/Responsive_ScadaApp.exe`。請保留短建置路徑：原本 `cmake-build-debug-visual-studio` 使 QML cache 物件與部分 MOC 檔案的完整路徑過長，導致 MSVC C1083 / Invalid argument 與 moc 無法建立檔案。

## 啟動

雙擊 `run-demo.cmd`。啟動檔會設定本機 Qt 執行環境，開啟 `build-local/Responsive_ScadaApp.exe`。

## 重新編譯

執行 `build-demo.cmd`，成功後再執行 `run-demo.cmd`。

目前使用本機已安裝的 Qt 6.8.3 MinGW 64-bit、MinGW 13.1、CMake 與 Ninja（皆位於 `C:/Qt`）。若 Qt 安裝位置不同，請調整兩個 cmd 檔內的路徑。建置停用選用的 Qt Insight，保留 Qt Design Studio 元件及 Quick 3D。

## MQTT 模式

原始 ZIP 的 `App/qtmqttmanager` 是空的。此版本從同層 `qtmqttmanager-stub-changes` 複製替代模組與 `App/CMakeLists.txt`，讓展示程式可以編譯並離線啟動。

替代模組不會連接 MQTT broker，也不會接收真實機台資料；其連線訊號僅為介面相容用途。需要真實 MQTT 功能時，請將 `App/qtmqttmanager` 換回 `.gitmodules` 指定的正式子模組並重新編譯。
