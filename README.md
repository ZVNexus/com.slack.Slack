# Slack

Slack is a messaging app for business that connects people to the information they need.

This repo hosts the flatpak wrapper for [Slack](https://slack.com/), available at [Flathub](https://flathub.org/apps/details/com.slack.Slack).

```sh
flatpak install flathub com.slack.Slack
flatpak run com.slack.Slack
```

### Making flags persistent

Below is an example slack-flags.conf file that defines the flags --disable-gpu-shader-disk-cache:

```
~/.var/app/com.slack.Slack/config/slack-flags.conf

# This line will be ignored.
--disable-gpu-shader-disk-cache
```

### Wayland

This package defaults to Wayland on KDE as it has achieved parity, however there are some remaining
regressions for GNOME. If you want to opt-in anyways, add the following persistent flags:

```
--enable-wayland-ime
--ozone-platform-hint=auto
```
