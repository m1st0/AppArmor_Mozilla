#!/bin/zsh

# Maulik Mistry <mistry01.com>
# Copyright (c) 2025 Maulik Mistry
#
# This project is licensed under the BSD License. See the LICENSE.txt file for details.
#
# If you appreciate my work or help, consider supporting me through donations.
# You can donate via Venmo at  or PayPal at https://www.paypal.com/paypalme/m1st0

echo "Removing AppArmor customization symlinks..."

for link in /etc/apparmor.d/my_customizations /etc/apparmor.d/local/my_customizations; do
  if [ -L "$link" ]; then
    echo "Remove symlink $link? [y/N]"
    read -r answer
    if [[ "$answer" == [Yy]* ]]; then
      sudo rm -rf "$link"
      echo "Removed $link"
    else
      echo "Skipped $link"
    fi
  else
    echo "No symlink found at $link"
  fi
done

echo "Done. Reload AppArmor profiles with:"
echo "  sudo systemctl reload apparmor"

