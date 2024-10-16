#!/bin/bash

WAYLAND_SOCKET=${WAYLAND_DISPLAY:-"wayland-0"}

if [[ -e "${XDG_RUNTIME_DIR}/${WAYLAND_SOCKET}" || -e "${WAYLAND_DISPLAY}" ]]
then
    EXTRA_FLAGS+=("--enable-wayland-ime" "--ozone-platform-hint=auto")
fi

env TMPDIR=${XDG_CACHE_HOME} XDG_DOWNLOAD_DIR=$(xdg-user-dir DOWNLOAD) zypak-wrapper /app/extra/slack -s "${EXTRA_FLAGS[@]}" "$@"
