# Python

## Reference for setuping up python coding environment

* [這樣的開發環境沒問題嗎？ – Tzu-ping Chung – PyCon Taiwan 2018](https://youtu.be/6Nl0IYkU0hU)
* [Python Tools for Managing Virtual Environments](https://dev.to/bowmanjd/python-tools-for-managing-virtual-environments-3bko#howto)

* pyenv
    * controll python version
    * [https://github.com/pyenv/pyenv#automatic-installer](https://github.com/pyenv/pyenv#automatic-installer)
* pipenv
    * controll projects packages/virtual enviroment
    * [https://pipenv.pypa.io/en/latest/#install-pipenv-today](https://pipenv.pypa.io/en/latest/)
    * [shell-completion](https://pipenv.pypa.io/en/latest/advanced/#shell-completion)
    * [pipenv install throws --system is intended to be used for pre-existing Pipfile installation #5052](https://github.com/pypa/pipenv/issues/5052)
    * [Specifying Versions of a Package](https://pipenv-fork.readthedocs.io/en/latest/basics.html#specifying-versions-of-a-package)

* [cookiecutter](https://github.com/cookiecutter/cookiecutter)
    * A cross-platform command-line utility that creates projects from cookiecutters (project templates), e.g. Python package projects, C projects.

* TDD（Test-Driven Development，測試驅動開發）/單元測試框架（unit testing frameworks）
    * [unittest](https://github.com/python/cpython/blob/3.8/Lib/unittest/__init__.py)
    * [mock](https://github.com/python/cpython/blob/3.8/Lib/unittest/mock.py)
    * [pytest](https://docs.pytest.org/en/7.3.x/)
    * [nose](https://nose.readthedocs.io/en/latest/)
        * [github/node-devs/nose](https://github.com/nose-devs/nose)    
    * tox
    * hypothesis
    * robot framework    

* Time complexity/Big O
    * timeit
    * big_o
    * pyperf

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
#Creating a virtualenv for this project...
pipenv --python 3.8.16

#--system is intended to be used for pre-existing Pipfile installation
#SHow your python virtual environments
pipenv --venv
#Spawns a shell within the virtualenv.
pipenv shell

#pipenv install python packages you want to used
#Just pick up pandas/requests/Django as Example.
pipenv install pandas
pipenv install "pandas>=1.5"
pipenv install "requests>=1.4"
pipenv install Django

#Exit your python virtual environments
exit
```    

## Guides

* [roadmap/Python Developer](https://roadmap.sh/python)
* [w3schools/Python Tutorial](https://www.w3schools.com/python/default.asp)
* [class](https://www.geeksforgeeks.org/python-classes-and-objects/)
* [3.8/tutorial/classes](https://docs.python.org/3.8/tutorial/classes.html)

```python
#在 Python 語言中，當一個 .py 程式檔案被執行時，Python 直譯器會建立一個名為 __main__ 的模組，並執行該模組中的所有程式碼。如果這個程式檔案是被當作模組（module）import 到別的程式檔案中，則 __name__ 變數的值就會是模組的名稱，而不是 __main__。

#因此，使用 if __name__ == "__main__": 來判斷當前的 .py 程式檔案是不是被當作主程式（main program）執行，若是，則執行其下的程式碼；若不是，則不執行其下的程式碼。這麼做的好處是可以讓一個 .py 檔案可以被當作模組引用，同時也可以單獨執行作為主程式。

if __name__ == "__main__":
    main()

```

## troubleshooting or tips or any other tools?

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

* duplicate xxx.py name with module name "xxx"

* Packages for Thermodynamics of Materials
    * Thermopy
    * PyCALPhad
    * Pycalphad-plot
    * Matplotlib
    * Scipy
    * PyNBTI

* Packages for calculus
    * SymPy
    * SciPy
    * NumPy
    * SymEngine
    * pyODE
    * autograd
    * TensorFlow

* Packages for web crawler
    * Requests
    * BeautifulSoup
    * Scrapy
    * Selenium
    * PyQuery
    * MechanicalSoup
    * Lxml
    * Pandas
    * Pyppeteer
    * Requests-HTML

* Packages or framewroks for ML(Machine Learning)
    * PyTorch
    * TensorFlow
    * JAX

* Projects
    * [launchpad](https://dev.launchpad.net/Getting)
