# up

Just a tiny hobby utility for Linux to check system uptime by reading directly from `/proc/uptime`. Won't be big and professional like systemd.

## Building and Installing

```bash
git clone [https://github.com/codewiths-sudo/up-time](https://github.com/codewiths-sudo up-time)
cd up-time
make
sudo make install
up
sudo make uninstall