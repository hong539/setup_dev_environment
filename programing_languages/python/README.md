# Python

## Reference for setuping up python coding environment

* [這樣的開發環境沒問題嗎？ – Tzu-ping Chung – PyCon Taiwan 2018](https://youtu.be/6Nl0IYkU0hU)

* pyenv
    * controll python version
    * [https://github.com/pyenv/pyenv#automatic-installer](https://github.com/pyenv/pyenv#automatic-installer)
* pipenv
    * controll projects packages/virtual enviroment
    * [https://pipenv.pypa.io/en/latest/#install-pipenv-today](https://pipenv.pypa.io/en/latest/)
    * [shell-completion](https://pipenv.pypa.io/en/latest/advanced/#shell-completion)
    * [pipenv install throws --system is intended to be used for pre-existing Pipfile installation #5052](https://github.com/pypa/pipenv/issues/5052)
    * [Specifying Versions of a Package](https://pipenv-fork.readthedocs.io/en/latest/basics.html#specifying-versions-of-a-package)

## Installation

```shell
#Install pyenv
curl https://pyenv.run | bash

#Show python available versions
pyenv install -l

#Install sepcital version
pyenv install 3.8.16

#Setting Global python version
pyenv global 3.8.16

#Install pipenv after setting python global version with pyenv

pip install pipenv

#pipenv Shell Completion
#~/.bashrc or ~/.bash_profile
vim ~/.bashrc
#add this th .bashrc
eval "$(_PIPENV_COMPLETE=bash_source pipenv)"

source ~/.bashrc
```        

## Usage with your python projects

```shell
pyenv version
pyenv versions

#Go to your python project folders
cd ~/PATH/projects_folder/

#Setting up local python version
pyenv local 3.8.16
#Check pip/pipenv version
pip -V
which pip
which pipenv

#Setting up python
pipenv --version
pipenv --python 3.8.16

#--system is intended to be used for pre-existing Pipfile installation
#SHow your python virtual environments
pipenv --venv
#Spawns a shell within the virtualenv.
pipenv shell

#pipenv install python packages you want to used
pipenv install pandas
pipenv install "pandas>=1.5"
pipenv install "requests>=1.4"

#Exit your python virtual environments
exit
```    

## troubleshooting

```shell
#If you are trying using another python version
# Warning: Your Pipfile requires python_version 3.8.15, but you are using 3.8.16 (/home/hong/.local/share/v/i/bin/python).
#   $ pipenv --rm and rebuilding the virtual environment may resolve the issue.
#   $ pipenv check will surely fail.

#Upgrade version
#edit Pipfile
#edit the python version
vim Pipfile

#Replace Old version
python_version = "3.8.15"

#To New version
python_version = "3.8.16"

#Then run these
pipenv --rm
pipenv install
```