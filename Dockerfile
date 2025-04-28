FROM ghcr.io/flathub/flatpak-builder-lint:latest

ENTRYPOINT []
ENV TMPDIR=/tmp

RUN mkdir /usr/local && curl -fsSL https://nodejs.org/dist/v22.15.0/node-v22.15.0-linux-x64.tar.xz | tar -xJ -C /usr/local --strip-components=1

RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
RUN flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
RUN flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo