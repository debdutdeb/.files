#!/bin/bash

readonly neovim_data="${DOCKER_NEOVIM_DATA_DIR:-$PWD/neovim-data}"

echo "# Creating directory '$neovim_data' for persistent neovim files"
if [[ -d "$neovim_data" ]]; then echo "$neovim_data already exists..skipping.."; else mkdir -v "$neovim_data"; fi

docker build -t neovim --build-arg UID="$(id -u)" --build-arg GID="$(id -g)" --build-arg USER="$USER" . &&
	docker run --rm --name neovim -v "${neovim_data}:/home/$USER/.local/share/nvim" -v "$(realpath "$0"):/mnt" -w /mnt -ti neovim
