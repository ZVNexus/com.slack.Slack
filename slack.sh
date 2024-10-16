#!/bin/bash

if [ -f "${XDG_CONFIG_HOME}/slack-flags.conf" ]; then
    mapfile -t EXTRA_FLAGS <<< "$(grep -v '^#' "${XDG_CONFIG_HOME}/slack-flags.conf")"
fi

if [[ "$XDG_SESSION_TYPE" == "wayland" && "$XDG_CURRENT_DESKTOP" == "KDE" ]]
then
    EXTRA_FLAGS+=("--enable-wayland-ime" "--ozone-platform-hint=auto")
fi

env TMPDIR=${XDG_CACHE_HOME} XDG_DOWNLOAD_DIR=$(xdg-user-dir DOWNLOAD) zypak-wrapper /app/extra/slack -s "${EXTRA_FLAGS[@]}" "$@"
