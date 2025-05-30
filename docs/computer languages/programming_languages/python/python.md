# Python

## What is Python ?

* [What is Python? Executive Summary](https://www.python.org/doc/essays/blurb/)
* [Python Implementations](https://wiki.python.org/moin/PythonImplementations)
* interpreter implementation for python
    * CPython

## Q&A

1. What is a key difference between multi-threading and multi-processing in Python?
A. Multi-threading uses multiple CPUs, while multi-processing uses a single CPU.
B. Multi-threading is limited by the GIL, while multi-processing bypasses it.
C. Multi-threading is faster for CPU-bound tasks, while multi-processing is faster for I/O-...

Answer:
It should be B. Multi-threading is limited by the GIL, while multi-processing bypasses it.

From Python docs:

* [Python docs/3.13.1/threading — Thread-based parallelism](https://docs.python.org/3.13/library/threading.html)
    * CPython implementation detail: In CPython, due to the Global Interpreter Lock, only one thread can execute Python code at once (even though certain performance-oriented libraries might overcome this limitation). If you want your application to make better use of the computational resources of multi-core machines, you are advised to use multiprocessing or concurrent.futures.ProcessPoolExecutor. However, threading is still an appropriate model if you want to run multiple I/O-bound tasks simultaneously.

* [Python docs/3.13.1/multiprocessing — Process-based parallelism](https://docs.python.org/3/library/multiprocessing.html)
    * multiprocessing is a package that supports spawning processes using an API similar to the threading module. The multiprocessing package offers both local and remote concurrency, effectively side-stepping the Global Interpreter Lock by using subprocesses instead of threads. Due to this, the multiprocessing module allows the programmer to fully leverage multiple processors on a given machine. It runs on both POSIX and Windows.

* [Python docs/GIL global interpreter lock](https://docs.python.org/3/glossary.html#term-global-interpreter-lock)
    * The mechanism used by the CPython interpreter to assure that only one thread executes Python bytecode at a time. ...
    * More details, please click all of these URL links or do somtheing coding test to prove these ideas.


2. Why are virtual environments used in Python projects?
A. To improve code execution speed.
B. To isolate project dependencies.
C. To simplify syntax.
D. To reduce memory usage.

Answer: It should be B. To isolate project dependencies.

For My Python coding experience, I would use pyenv + poetry to lock a python interpreter version and manage project dependencies.
Or from this meme comic: [Python Environment](https://xkcd.com/1987/)
![Python Environment](https://imgs.xkcd.com/comics/python_environment.png)

3. What is the output of the following code snippet?
x = (1, 2, 3)
x[0] = 10

A. (10, 2, 3)
B. TypeError: 'tuple' object does not support item assignment
C. (1, 2, 3)
D. None

Answer: It should be To B. TypeError: 'tuple' object does not support item assignment

## docs/news/guides/tips/misc...

* [automatetheboringstuff.com/](https://automatetheboringstuff.com/)
* [github.com/hong539/python-101](https://github.com/hong539/python-101)
* [pyxel](https://github.com/kitao/pyxel/tree/main)
    * A retro game engine written in Rust and for Python
* [VizTracer is a low-overhead logging/debugging/profiling tool that can trace and visualize your python code execution.](https://github.com/gaogaotiantian/viztracer)
* [roadmap/Python Developer](https://roadmap.sh/python)
* [class](https://www.geeksforgeeks.org/python-classes-and-objects/)
* [3.8/tutorial/classes](https://docs.python.org/3.8/tutorial/classes.html)
* [Python Packaging User Guide/Packaging Python Projects](https://packaging.python.org/en/latest/tutorials/packaging-projects/)
* [3.12/6. Modules](https://docs.python.org/3/tutorial/modules.html)
* [geeksforgeeks/Python Modules](https://www.geeksforgeeks.org/python-modules/)
* [pylint](https://pypi.org/project/pylint/)
* [installing-python](https://realpython.com/installing-python/)
* [pypy](https://github.com/pypy/pypy)
* [Django 2.0*/實戰：留言板](https://hackmd.io/@dreamer/B1lAjxHRH/https%3A%2F%2Fhackmd.io%2FNlW4ubx7QKu4IeFkygSpQA)
* [ruff: An extremely fast Python linter and code formatter, written in Rust. ](https://github.com/astral-sh/ruff)
* [bregman-arie/python-exercises](https://github.com/bregman-arie/python-exercises)
* [Coroutines and Tasks](https://docs.python.org/3/library/asyncio-task.html)
* [Asynchronous I/O](https://docs.python.org/3/library/asyncio.html)
* [Global Interpreter Lock](https://wiki.python.org/moin/GlobalInterpreterLock)
* [concurrent.futures](https://docs.python.org/3.8/library/concurrent.futures.html)
* [ctypes](https://docs.python.org/3.8/library/ctypes.html)
* [Coroutines and Tasks](https://docs.python.org/3.8/library/asyncio-task.html)
* [Python預計加入Immortal Objects，可提升記憶體效率並解除平行運算限制](https://www.ithome.com.tw/news/158384)
* [PEP 683 – Immortal Objects, Using a Fixed Refcount](https://peps.python.org/pep-0683/)
* [How to Build a Search Engine from Scratch in Python — Part 1](https://medium.com/@deangela.neves/how-to-build-a-search-engine-from-scratch-in-python-part-1-96eb240f9ecb)
    * [TEDFinder](https://github.com/deangelacgn/TEDFinder/)

## collects/tips/tools/libraries/frameworks for setuping up coding environment

* pyenv
    * manage python interpreter version
    * [https://github.com/pyenv/pyenv#automatic-installer](https://github.com/pyenv/pyenv#automatic-installer)
    * [set-up-your-shell-environment-for-pyenv](https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv)
    * [install-python-build-dependencies](https://github.com/pyenv/pyenv#install-python-build-dependencies)
    * [Suggested build environment](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)
* Poetry
    * manage projects packages/virtual enviroment
    * [Install ](https://python-poetry.org/docs/)
    * [installing-dependencies-only](https://python-poetry.org/docs/basic-usage/#installing-dependencies-only)
* [loguru/Python logging made (stupidly) simple ](https://github.com/Delgan/loguru)
* Which Python version?
   * 2.7/3.8/3.9/3.10/3.11
* [Ep 40. Rust 和 PyO3：让 Python 再次伟大](https://pythonhunter.org/episodes/ep40)
* [Ep 15. 和 PyPA 的成员聊聊 Python 开发工作流](https://pythonhunter.org/episodes/ep15)
* [這樣的開發環境沒問題嗎？ – Tzu-ping Chung – PyCon Taiwan 2018](https://youtu.be/6Nl0IYkU0hU)
* [Python Tools for Managing Virtual Environments](https://dev.to/bowmanjd/python-tools-for-managing-virtual-environments-3bko#howto)
* [conda](https://docs.conda.io/en/latest/)
* [Python Packaging Authority](https://www.pypa.io/en/latest/)
* [rye](https://github.com/mitsuhiko/rye)
    * Rye: An Experimental Package Management Solution for Python
* pipenv
    * manage projects packages/virtual enviroment
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

* [Shioaji](https://sinotrade.github.io/zh_TW/)

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

* What are "seed packages: pip==23.2.1, setuptools==68.0.0, wheel==0.41.0"? shown in pipenv output
* duplicate xxx.py name with module name "xxx"

* Packages for web crawler/scrapy
    * Requests
    * BeautifulSoup
    * Scrapy
    * Selenium
        * [Install a Selenium library](https://www.selenium.dev/documentation/webdriver/getting_started/install_library/)
    * PyQuery
    * MechanicalSoup
    * Lxml
    * [Pandas](https://pandas.pydata.org/)
        * [Installation](https://pandas.pydata.org/docs/getting_started/install.html)
    * Pyppeteer
    * Requests-HTML

* Packages for web development
    * Django
    * Tornado
    * Django REST Framework
    * Flask
    * FastAPI

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

* Packages or framewroks for ML(Machine Learning)
    * PyTorch
    * TensorFlow
    * JAX
    * [MLflow](https://github.com/mlflow/mlflow)
    * [DVC](https://dvc.org/)

* Packages for Natural Language Processing
    * [pykakasi](https://codeberg.org/miurahr/pykakasi)

* Projects
    * [launchpad](https://dev.launchpad.net/Getting)
    * [µchan – Fast anonymous imageboard software](https://github.com/floens/uchan/tree/master)
    * [odoo](https://www.odoo.com/)
        * Odoo is a suite of open source business apps that cover all your company needs: CRM, eCommerce, accounting, inventory, point of sale, project management, etc.
        * [odoo/16.0/administration/install](https://www.odoo.com/documentation/16.0/administration/install.html)
        * [github.com/odoo/odoo](https://github.com/odoo/odoo)
        * [library_app](https://github.com/cam-studio/library_app/tree/main)
            * Odoo modules for library management
    * [github.com/mov-cli/mov-cli/tree/v4](https://github.com/mov-cli/mov-cli/tree/v4)
        * Watch everything from your terminal.


* [w3schools/Python Tutorial](https://www.w3schools.com/python/default.asp)


```python
#在 Python 語言中，當一個 .py 程式檔案被執行時，Python 直譯器會建立一個名為 __main__ 的模組，並執行該模組中的所有程式碼。如果這個程式檔案是被當作模組（module）import 到別的程式檔案中，則 __name__ 變數的值就會是模組的名稱，而不是 __main__。

#因此，使用 if __name__ == "__main__": 來判斷當前的 .py 程式檔案是不是被當作主程式（main program）執行，若是，則執行其下的程式碼；若不是，則不執行其下的程式碼。這麼做的好處是可以讓一個 .py 檔案可以被當作模組引用，同時也可以單獨執行作為主程式。

if __name__ == "__main__":
    main()
```