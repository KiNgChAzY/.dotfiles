 # My Dotfiles
 These are my dotfile configuration files for different software in Bash.
 ## .nanorc
 This is my custom .nanorc configuration for Nano.
 ## .bashrc
 This is my custom .bashrc configuration for Bash
## Files

### `./bin/linux.sh`
- Creates the `.TRASH` 
- Renames the `.nanorc` to `.bup_nanorc`
- Copies `./etc/nanorc` to `.nanorc`
- Appends `bashrc_custom` to `.bashrc`
- Logs in `linuxsetup.log`

### `./bin/cleanup.sh`
- Removes the `.nanorc` file from the home directory
- Removes the line `.bashrc`
- Deletes the `.TRASH`
- Logs in `linuxsetup.log`

### `Makefile`

- `clean`: Runs the `cleanup.sh` undo changes by `linux.sh`
- `linux`: Runs the `linux.sh` scriptst and `clean`
- `make clean`: Runs the cleanup tasks.
- `make linux`: Runs the setup tasks
