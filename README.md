# AppArmor Customizations for Downloaded Mozilla Apps

This repository contains AppArmor profile setup designed for customized installs of Mozilla products. You may have to adjust paths as necessary.

If you find this project useful and would like to support its development, consider donating via PayPal or Venmo: 
[PayPal](https://www.paypal.com/paypalme/m1st0).
[Venmo](https://venmo.com/code?user_id=3319592654995456106&created=1753280522)

© 2025 Maulik Mistry

This project is licensed under the BSD 2-Clause License. See the [LICENSE.txt](./LICENSE.txt) file for details.

---

## Quick Setup

You can either follow the manual instructions below or use the provided scripts to automate setup and teardown.

---

## Manual Installation

### 1. Symlink the custom profiles

```bash
sudo ln -s /path/to/repo/my_customizations /etc/apparmor.d/my_customizations
sudo ln -s /path/to/repo/customizations /etc/apparmor.d/local/my_customizations
```

### 2. Reload AppArmor profiles

```bash
sudo apparmor_parser -r /etc/apparmor.d/my_customizations
sudo systemctl restart apparmor
```

---

## Using the Provided Scripts

- `install.sh` — creates the necessary symlinks and reloads profiles.  
- `uninstall.sh` — removes symlinks with confirmation prompts.

Run these scripts if you prefer automation over manual setup.

---

## About Profiles

- Profile names are kept simple (e.g., `firefox-custom`) while path references use `@{HOME}` for portability.


