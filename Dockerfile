FROM ghcr.io/flathub/flatpak-builder-lint:latest

ENTRYPOINT []
ENV TMPDIR=/tmp

RUN curl -fsSL https://nodejs.org/download/release/latest-v22.x/node-v22.15.0.tar.xz | tar -xJ -C /usr/local --strip-components=1

RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
RUN flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
RUN flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo