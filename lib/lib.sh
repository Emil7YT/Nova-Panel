#!/bin/bash

# Displays a stylized welcome message
welcome() {
  echo ""
  echo "███╗   ██╗ ██████╗ ██╗   ██╗ █████╗     "
  echo "████╗  ██║██╔═══██╗██║   ██║██╔══██╗    "
  echo "██╔██╗ ██║██║   ██║██║   ██║███████║    "
  echo "██║╚██╗██║██║   ██║╚██╗ ██╔╝██╔══██║    "
  echo "██║ ╚████║╚██████╔╝ ╚████╔╝ ██║  ██║    "
  echo "╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚═╝  ╚═╝    "
  echo ""
  echo "* Welcome to Nova Installer - Reimagined Pterodactyl Setup"
  echo "* GitHub: https://github.com/Emil7YT/Nova-Panel"
  echo ""
}

# Output info messages
output() {
  echo -e "\033[1;34m[INFO]\033[0m $1"
}

# Output error messages
error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1"
}

# Update the lib.sh if needed (placeholder for actual logic)
update_lib_source() {
  output "Using latest Nova Installer libraries..."
}

# Fake UI function that performs installation (you should later replace this with real logic)
run_ui() {
  case "$1" in
    panel)
      output "Installing Nova Panel..."
      sleep 2
      output "Nova Panel installed successfully."
      ;;
    wings)
      output "Installing Nova Wings..."
      sleep 2
      output "Nova Wings installed successfully."
      ;;
    panel_canary)
      output "Installing Nova Panel (canary)..."
      sleep 2
      output "Canary Nova Panel installed."
      ;;
    wings_canary)
      output "Installing Nova Wings (canary)..."
      sleep 2
      output "Canary Nova Wings installed."
      ;;
    uninstall_canary)
      output "Uninstalling Nova Panel and Wings (canary)..."
      sleep 2
      output "Uninstalled canary components."
      ;;
    *)
      error "Unknown component: $1"
      ;;
  esac
}
