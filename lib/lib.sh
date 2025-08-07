#!/bin/bash

# Log output with [INFO]
output() {
  echo -e "\033[1;34m[INFO]\033[0m $1"
}

# Log error with [ERROR]
error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1"
}

# Show welcome banner
welcome() {
  echo -e "\n"
  echo "Nova Installer v1.1.1"
  echo ""
}

# Print info about source (e.g., canary or stable)
update_lib_source() {
  output "Using Nova Installer branch: $GITHUB_SOURCE"
}

# Simulated install steps
run_ui() {
  local component=$1
  output "Installing $component..."

  case $component in
    panel)
      install_panel
      ;;
    wings)
      install_wings
      ;;
    panel_canary)
      install_panel_canary
      ;;
    wings_canary)
      install_wings_canary
      ;;
    uninstall_canary)
      uninstall_canary
      ;;
    *)
      error "Unknown installation target: $component"
      ;;
  esac
}

# ---- Actual Install Functions ----

install_panel() {
  output "Downloading Nova Panel (stable)..."
  sleep 1
  output "Installing Nova Panel completed!"
}

install_wings() {
  output "Downloading Nova Wings (stable)..."
  sleep 1
  output "Installing Nova Wings completed!"
}

install_panel_canary() {
  output "Downloading Nova Panel (canary)..."
  sleep 1
  output "Installing Nova Panel Canary completed!"
}

install_wings_canary() {
  output "Downloading Nova Wings (canary)..."
  sleep 1
  output "Installing Nova Wings Canary completed!"
}

uninstall_canary() {
  output "Uninstalling Nova Panel and Nova Wings (canary)..."
  sleep 1
  output "Uninstallation complete."
}
