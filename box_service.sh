#!/system/bin/sh

(
  until [ "$(getprop init.svc.bootanim)" = "stopped" ]; do
    sleep 10
  done

  if [ -f "/data/adb/box/scripts/start.sh" ]; then
    chmod 755 /data/adb/box/scripts/*
    /data/adb/box/scripts/start.sh
  else
    echo "未找到文件 '/data/adb/box/scripts/start.sh'"
  fi
)&
