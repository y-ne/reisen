#!/system/bin/sh

sleep 2

echo 80 > /data/adb/fake_cap
echo 4200000 > /data/adb/fake_volt
echo "Charging" > /data/adb/fake_status
echo 250 > /data/adb/fake_temp
echo "Good" > /data/adb/fake_health

mount --bind /data/adb/fake_cap /sys/class/power_supply/battery/capacity
mount --bind /data/adb/fake_volt /sys/class/power_supply/battery/voltage_now
mount --bind /data/adb/fake_status /sys/class/power_supply/battery/status
mount --bind /data/adb/fake_temp /sys/class/power_supply/battery/temp
mount --bind /data/adb/fake_health /sys/class/power_supply/battery/health
