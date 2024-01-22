#!/usr/bin/env python3

import dbus

bus = dbus.SystemBus()
timedate = bus.get_object('org.freedesktop.timedate1', '/org/freedesktop/timedate1')
iface = dbus.Interface(timedate, 'org.freedesktop.DBus.Properties')
timezone = iface.Get('org.freedesktop.timedate1', 'Timezone')
print(timezone)
