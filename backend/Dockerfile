# we support images for building with a vanilla SteamOS base,
# or versions with ootb support for rust or go
# developers can also customize these images via this Dockerfile
#FROM ghcr.io/steamdeckhomebrew/holo-toolchain-rust:latest
#FROM ghcr.io/steamdeckhomebrew/holo-toolchain-go:latest
FROM ghcr.io/steamdeckhomebrew/holo-base:latest

# RUN pacman -Syu --noconfirm --needed

RUN pacman -S wget unzip --noconfirm --needed

# entrypoint.sh should always be located in the backend folder
ENTRYPOINT [ "/backend/entrypoint.sh" ]
