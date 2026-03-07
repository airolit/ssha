# ssha

SSH wrapper for connecting to Airolit drones. Handles host key conflicts (multiple devices on the same IP) and automates key-based authentication.

## Features

- Skips host key checking — no more "REMOTE HOST IDENTIFICATION HAS CHANGED" errors when swapping devices
- Automatic key setup — copies your SSH key to the device on first connect (password needed once)
- Network check — verifies you're on the same subnet before attempting to connect
- On first run, lets you pick an existing SSH key or generate a new one

## Install

```
make install
```

Installs to `~/.local/bin`. To uninstall: `make uninstall`.

## Usage

```
ssha <user> [command...]
```

### Examples

```bash
ssha s1                      # shell as s1 on 192.168.144.111
ssha cx10                    # shell as cx10 on 192.168.144.111
ssha -h 10.223.0.111 s1     # shell as s1 on a different host
ssha s1 ls /tmp              # run a command remotely
```

### Options

| Option | Description |
|---|---|
| `-u, --user <user>` | SSH user |
| `-h, --host <host>` | Host IP (default: `192.168.144.111`) |

## Config

Settings are stored in `~/.config/ssha/config.json` after first run (selected SSH key path). Delete the file to reconfigure.
