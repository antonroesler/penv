function penv() {
    venv_dir="venv"

    if [ $# -gt 0 ]
    then
        venv_path="$1"
    else
        venv_path="./$venv_dir"
    fi

    function display_info() {
        echo -e "\e[1;36m----------------------------------------\e[0m"
        echo -e "\e[1;32mVirtual environment: \e[1;35m$venv_path\e[0m"
        echo -e "\e[1;32mPython version: \e[1;35m$(python --version 2>&1)\e[0m"
        echo -e "\e[1;36m----------------------------------------\e[0m"
    }

    if [ -d "$venv_path" ] && [ -f "$venv_path/bin/activate" ]
    then
        echo -e "\e[1;33mExisting virtual environment found at $venv_path. Activating...\e[0m"
        source "$venv_path/bin/activate"
        display_info
    elif [ ! -d "$venv_path" ]
    then
        echo -e "\e[1;33mCreating virtual environment at $venv_path...\e[0m"
        python3 -m venv "$venv_path"
        echo -e "\e[1;32mVirtual environment created at: $venv_path\e[0m"
        echo -e "\e[1;33mActivating virtual environment...\e[0m"
        source "$venv_path/bin/activate"
        display_info
    else
        echo -e "\e[1;31mDirectory already exists. Please specify a new path or delete the existing one.\e[0m"
    fi
}
