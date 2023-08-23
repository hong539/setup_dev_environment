# Python

## What is Python ?

* [What is Python? Executive Summary](https://www.python.org/doc/essays/blurb/)
* [Python Implementations](https://wiki.python.org/moin/PythonImplementations)
* interpreter implementation for python
    * CPython

## docs/news

* [Global Interpreter Lock](https://wiki.python.org/moin/GlobalInterpreterLock)
* [concurrent.futures](https://docs.python.org/3.8/library/concurrent.futures.html)
* [ctypes](https://docs.python.org/3.8/library/ctypes.html)
* [Coroutines and Tasks](https://docs.python.org/3.8/library/asyncio-task.html)
* [Python預計加入Immortal Objects，可提升記憶體效率並解除平行運算限制](https://www.ithome.com.tw/news/158384)
* [PEP 683 – Immortal Objects, Using a Fixed Refcount](https://peps.python.org/pep-0683/)

## collects/tips for setuping up coding environment

* Which Python version?
   * 2.7/3.8/3.9/3.10/3.11
* [Ep 40. Rust 和 PyO3：让 Python 再次伟大](https://pythonhunter.org/episodes/ep40)
* [Ep 15. 和 PyPA 的成员聊聊 Python 开发工作流](https://pythonhunter.org/episodes/ep15)
* [這樣的開發環境沒問題嗎？ – Tzu-ping Chung – PyCon Taiwan 2018](https://youtu.be/6Nl0IYkU0hU)
* [Python Tools for Managing Virtual Environments](https://dev.to/bowmanjd/python-tools-for-managing-virtual-environments-3bko#howto)

* [conda](https://docs.conda.io/en/latest/)
* [Python Packaging Authority](https://www.pypa.io/en/latest/)

* Poetry
    * [Install ](https://python-poetry.org/docs/)
    * [installing-dependencies-only](https://python-poetry.org/docs/basic-usage/#installing-dependencies-only)

* pyenv
    * controll python version
    * [https://github.com/pyenv/pyenv#automatic-installer](https://github.com/pyenv/pyenv#automatic-installer)
    * [set-up-your-shell-environment-for-pyenv](https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv)
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

## Usage with pyenv+poetry

* [poetry/managing-environments](https://python-poetry.org/docs/managing-environments#managing-environments)

```shell
#Install pyenv
curl https://pyenv.run | bash

#add commands to your environment
#to add to ~/.bash_profile:
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

source ~/.bash_profile
which pyenv
pyenv

#install python with versions
pyenv install 2.7.18
pyenv install 3.8.16
pyenv install 3.9.17
pyenv install 3.10.12

pyenv versions
#for system-scope python
pyenv global 3.8.16

#install poetry
curl -sSL https://install.python-poetry.org | python3 -

#setting PATH for poetry
vim ~/.bash_profile
export PATH="/home/hong/.local/bin:$PATH"
source ~/.bash_profile
poetry --version
poetry completions bash >> ~/.bash_completion
source ~/.bash_completion

#setting python version for a new project
cd ~/some_path/project_folder
pyenv local 3.8.16

#create new project with poetry
poetry new poetry-demo

#Initialising a pre-existing project
cd pre-existing-project
poetry init

#add package like pip
#pip install pykakasi
#poetry add pykakasi
poetry add pendulum

#Activating the virtual environment
poetry shell

#Installing dependencies only
poetry install --no-root
```        

## Usage with pyenv+pipenv

* [Python: Select Interpreter](https://code.visualstudio.com/docs/python/environments)

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

#check pipenv version
pipenv --version
#Creating a virtualenv for this project...
pipenv --python 3.8.16

#--system is intended to be used for pre-existing Pipfile installation
#SHow your python virtual environments
pipenv --venv
#Spawns a shell within the virtualenv.
pipenv shell

#Using Python: Select Interpreter in your IDE such as vscode
#ctrl+shift+p > Python: Select Interpreter > input the python path

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

* Import "scrapy" could not be resolvedPylance when using pyenv and pipenv in vscode    
    * 目前使用vscode，以及python/pyenv/pipenv，操作上使用了
    * 首先在專案目錄使用了指令    
    ```shell
    pyenv local 3.8.16
    pipenv --python 3.8.16
    pipenv shell
    pipenv install scrapy
    which scrapy
    scrapy version
    scrapy startproject src
    ```
    * 但是編寫python程式碼時出現以下錯誤，
    * Import "scrapy" could not be resolvedPylance
    * 請問該如何調整vscode的插件環境變數?修正上述問題?
    * 要解決 "Import 'scrapy' could not be resolved" 的錯誤，您可以在 VS Code 中配置 Pylance 的環境變數，以便它能夠正確識別您的 Python 環境。請按照以下步驟進行調整：
        * 確定您已在專案目錄中使用 pipenv shell 進入虛擬環境。
        * 在 VS Code 中，按下 Ctrl+Shift+P（Windows/Linux）或 Command+Shift+P（Mac）打開命令面板。
        * 在命令面板中，輸入 "Python: Select Interpreter" 並選擇該選項。這將打開一個選擇 Python 解釋器的列表。
        * 在列表中，您應該能夠看到您的虛擬環境，它應該類似於 pipenv 3.8.16。選擇該虛擬環境。
        * 選擇虛擬環境後，VS Code 將自動更新 .vscode/settings.json 檔案以指定選擇的解釋器路徑。這將設定 Pylance 擴充套件使用的 Python 環境。
        * 重新啟動 VS Code 以使更改生效。

        * 如果您仍然遇到相同的問題，請確保您的虛擬環境正確配置並包含所需的套件。您可以使用以下指令來確認套件是否已安裝在虛擬環境中：
        ```shell
        pipenv shell
        pip list
        #請確認在 pip list 的輸出中是否包含了 scrapy 套件。
        pipenv install scrapy
        ```


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

* Packages for CLI(Command-Line Interface)
    * Rich

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

* Packages for Natural language
    * [pykakasi](https://codeberg.org/miurahr/pykakasi)

* Projects
    * [launchpad](https://dev.launchpad.net/Getting)
