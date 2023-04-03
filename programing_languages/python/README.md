# Python

## setup for python coding

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
vim ~/.bash_profile
#add this th .bashrc
eval "$(_PIPENV_COMPLETE=bash_source pipenv)"

source ~/.bash_profile
```        

## Usage with your python projects

```shell
pyenv version
pyenv versions
pyenv install 2.7.18
pyenv install 3.8.15
pyenv install 3.10.8

cd ~/PATH/projects_folder/
pyenv local 3.9.15
pip --version
which pip
pip install pipenv
which pipenv
pipenv --version
pipenv --python 3.9.15
#--system is intended to be used for pre-existing Pipfile installation
pipenv --venv
pipenv shell
pipenv install pandas
pipenv install "pandas>=1.5"
pipenv install "requests>=1.4"
exit
```    
