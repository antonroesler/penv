# penv - A simple Python virtual environment manager for Zsh
`penv` is a minimalistic shell function for quickly creating Python virtual environments in zsh. 

`penv` is not a manager for virtual environments, but a tool to quickly create and activate python virtual environments without the need of `python3 -m venv` and `source venv/bin/activate` all the time. Just type `penv` and your existing virtual env is activated, or is created if it not yet exists.

## Installation
Save the penv.sh script into a suitable directory, such as `~/.penv/.`

Open your `~/.zshrc` file and add the following line at the end:

```bash
source ~/.penv/penv.sh
```
Save the changes and restart your terminal or run source ~/.zshrc to load the updated configuration.

## Usage
```bash
penv [path]
```

### Create and activate a virtual environment
To create and activate a virtual environment in the current directory, simply run:
```bash
penv
```
This will create a new virtual environment in the `./venv` directory and activate it.

To create a virtual environment in a custom directory, provide the path as an argument:

```bash
penv /path/to/custom/venv
```
This will create a new virtual environment in the specified directory and activate it.

# Activate an existing virtual environment
To activate an existing virtual environment, use the same penv command with the path to the virtual environment:

```bash
penv
```
This will activate a virtual env in the folder `./venv`, if that does not exist, it will be created, see command above.

To active an existing virtual env at another location you can use:

```bash
penv /path/to/existing/venv
```

This will activate the virtual environment, and you will see information about the virtual environment path and Python version being used.

### Deactivate a virtual environment
To deactivate a virtual environment, simply use the built-in deactivate command:

```bash
deactivate
```
This will deactivate the current virtual environment and return you to your system's Python environment.

## Notes
- penv is designed to work with Zsh and may not work as expected in other shells.
- `penv` is not a manager for virtual environments, but a tool to quickly create and activate python virtual environments without the need of `python3 -m venv` and `source venv/bin/activate`
- penv is intended for minimalistic virtual environment management and may not include advanced features found in other virtual environment managers.

## License 
`penv` is released under the MIT License.