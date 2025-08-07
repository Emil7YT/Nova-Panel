#!/bin/bash

output() {
  echo -e "\e[1;36m[NOVA]\e[0m $1"
}

error() {
  echo -e "\e[1;31m[ERROR]\e[0m $1"
}

update_lib_source() {
  output "Using source: $GITHUB_SOURCE"
}

install_nova_panel() {
  output "Installing Nova Panel..."
  # You can customize this installation script
  apt update && apt install -y nginx mysql-server php
  output "Nova Panel installed successfully!"
}

install_nova_wings() {
  output "Installing Nova Wings..."
  # You can customize this too
  apt update && apt install -y docker.io
  output "Nova Wings installed successfully!"
}

uninstall_nova() {
  output "Uninstalling Nova Panel and Wings..."
  # Add your uninstall logic here
  output "Uninstalled successfully."
}

run_ui() {
  case "$1" in
    panel)
      install_nova_panel
      ;;
    wings)
      install_nova_wings
      ;;
    uninstall_canary)
      uninstall_nova
      ;;
    *)
      error "Unknown command: $1"
      ;;
  esac
}
