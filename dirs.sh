#!/bin/sh

mkdir "${HOME}/Desktop" \
    "${HOME}/Downloads" \
    "${HOME}/Templates" \
    "${HOME}/Publicshare" \
    "${HOME}/Documents" \
    "${HOME}/Music" \
    "${HOME}/Pictures" \
    "${HOME}/Videos"

xdg-user-dirs-update --set DESKTOP "${HOME}/Desktop"
xdg-user-dirs-update --set DOWNLOAD "${HOME}/Downloads"
xdg-user-dirs-update --set TEMPLATES "${HOME}/Templates"
xdg-user-dirs-update --set PUBLICSHARE "${HOME}/Publicshare"
xdg-user-dirs-update --set DOCUMENTS "${HOME}/Documents"
xdg-user-dirs-update --set MUSIC "${HOME}/Music"
xdg-user-dirs-update --set PICTURES "${HOME}/Pictures"
xdg-user-dirs-update --set VIDEOS "${HOME}/Videos"

xdg-user-dirs-update

rm -R "${HOME}/Рабочий стол" \
    "${HOME}/Загрузки" \
    "${HOME}/Шаблоны" \
    "${HOME}/Общедоступные" \
    "${HOME}/Документы" \
    "${HOME}/Музыка" \
    "${HOME}/Видео" \
    "${HOME}/Изображения"

rm ${HOME}/.config/gtk-3.0/bookmarks
tee -a "${HOME}/.config/gtk-3.0/bookmarks" > /dev/null <<EOT
${HOME}/Documents
${HOME}/Music
${HOME}/Pictures
${HOME}/Videos
${HOME}/Downloads
EOT
