#! /bin/bash
sudo service dbus start
terminator


# terminatorから以下手順により実行されてはいるようだが、GUIが立ち上がらない。
# ./squashfs-root$/AppRun
# ./squashfs-root$/unityhub
# ./squashfs-root$/unityhub-bin
    # 起動時に以下4種のエラーが出ているが、chromeでも出ていたので直接原因ではなさそう
    # 1.Failed to connect to the bus: Failed to connect to socket /var/run/dbus/system_bus_socket: そのようなファイルやディレクトリはありません:
    # これは、D-Busが正常に起動していないか、実行環境でD-Busがサポートされていないことを示しています。D-Busは、アプリケーション間の通信やコンポーネント間の相互作用を可能にするシステムモジュールです。Unity Hubが正常に動作するためには、D-Busが必要です。

    # 2.Exiting GPU process due to errors during initialization:
    # GPUプロセスの初期化中にエラーが発生したため、GPUプロセスが終了しました。これは、GPUドライバの問題やGPUが正しく構成されていない場合に発生する可能性があります。

    # 3.libva error: va_getDriverName() failed with unknown libva error,driver_name=(null):
    # libvaというライブラリのエラーが発生しました。このエラーは、ビデオアクセラレーションのドライバに関連している可能性があります。

    # 4.dri3 extension not supported:
    # DRI3 (Direct Rendering Infrastructure 3) の拡張がサポートされていないことを示しています。DRI3は、3Dアプリケーションのハードウェアアクセラレーションを提供するためのX Window Systemの拡張です。

# terminatorから以下手順により、「xeyes」はWindowsからGUI実行できた
# xeyes
    # エラーなし

# terminatorから以下手順により、「chrome」はWindowsからGUI実行できた（ただし、ネットワークは不通）
# sudo apt install -y gpg gpg-agent
# sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# sudo apt update
# sudo apt install google-chrome-stable -y
# google-chrome --no-sandbox
    # 参考までに起動時のエラーメッセージ（動作に影響なし？）
    # ryo@01dcfc7450fc:/opt/unity$ google-chrome --no-sandbox
    # [1563:1563:0521/135626.339830:ERROR:browser_dm_token_storage_linux.cc(100)] Error: /etc/machine-id contains 0 characters (32 were expected).
    # [1563:1585:0521/135626.436861:ERROR:bus.cc(399)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
    # [1563:1585:0521/135626.437065:ERROR:bus.cc(399)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
    # [1563:1585:0521/135626.511233:ERROR:bus.cc(399)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
    # [1563:1585:0521/135626.511469:ERROR:bus.cc(399)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
    # [1599:1599:0521/135626.594675:ERROR:viz_main_impl.cc(186)] Exiting GPU process due to errors during initialization
    # [1563:1660:0521/135626.634459:ERROR:object_proxy.cc(623)] Failed to call method: org.freedesktop.DBus.Properties.Get: object_path= /org/freedesktop/UPower: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.UPower was not provided by any .service files
    # [1563:1660:0521/135626.634992:ERROR:object_proxy.cc(623)] Failed to call method: org.freedesktop.UPower.GetDisplayDevice: object_path= /org/freedesktop/UPower: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.UPower was not provided by any .service files
    # [1563:1660:0521/135626.635517:ERROR:object_proxy.cc(623)] Failed to call method: org.freedesktop.UPower.EnumerateDevices: object_path= /org/freedesktop/UPower: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.UPower was not provided by any .service files
    # [1661:1661:0521/135627.067980:ERROR:viz_main_impl.cc(186)] Exiting GPU process due to errors during initialization
