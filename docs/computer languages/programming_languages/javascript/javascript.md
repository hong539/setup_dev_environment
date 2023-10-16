# javascript

## basic

* [JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
* [w3schools/JavaScript Tutorial](https://www.w3schools.com/js/)
* [The Modern JavaScript Tutorial](https://javascript.info/)
* How to run Javascript?
    * [How To Add JavaScript to HTML](https://www.digitalocean.com/community/tutorials/how-to-add-javascript-to-html)
    * [How To Write Your First JavaScript Program](https://www.digitalocean.com/community/tutorials/how-to-write-your-first-javascript-program)
    * [How To Use the JavaScript Developer Console](https://www.digitalocean.com/community/tutorials/how-to-use-the-javascript-developer-console)
    * [How To Use the Node.js REPL](https://www.digitalocean.com/community/tutorials/how-to-use-the-node-js-repl)
* Standard
    * ECMAScript 2015 or ES6
* JavaScript engine
    * [wikipedia/JavaScript engine](https://en.wikipedia.org/wiki/JavaScript_engine)
    * [v8](https://chromium.googlesource.com/v8/v8)
    * [SpiderMonkey](https://spidermonkey.dev/)
        * [Building and testing SpiderMonkey](https://firefox-source-docs.mozilla.org/js/build.html)
    * [WebKit](https://webkit.org/)

## runtime/engine/frameworks/packages/library

* [nvm](https://github.com/nvm-sh/nvm)
    * Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
* [nodejs](https://nodejs.org/en)
    * Node.js® is an open-source, cross-platform JavaScript runtime environment.
    * [arch linux/node.js wiki pages](https://wiki.archlinux.org/title/node.js_)
    * [Installing Node.js via package manager](https://nodejs.org/en/download/package-manager)
* Yarn
    * Yarn is a package manager that doubles down as project manager.
    * [yarn/Installation](https://yarnpkg.com/getting-started/install)
* [react](https://zh-hant.legacy.reactjs.org/)
* [Next.js](https://nextjs.org/docs)
* [jquery](https://jquery.com/)
* [MDN/AJAX](https://developer.mozilla.org/en-US/docs/Web/Guide/AJAX)
* [bluebird](http://bluebirdjs.com/docs/why-bluebird.html)
    * promise libraries

* jcubic/jquery.terminal: A JavaScript library for creating web-based terminals with custom commands.
* satnaing/terminal-portfolio: A terminal-style portfolio website built with React, TypeScript, and Styled-Components.
* asrvd/AshTerm: A terminal-styled portfolio website made with React and TypeScript.
* Kielx/terminal-portfolio: An ideal portfolio website for showcasing software developer projects.

## setting up dev enviroment

* setting up on Arch Linux

```shell
#install nvm via yay
yay -S nvm

#Add environment variable to your shell configuration
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
source ~/.bashrc

#Verify Installation
nvm --version
command -v nvm

#Instal Active Long Term Support (LTS) node.js latest version via nvm
nvm install --lts
which node
node -v
which npm
npm --version


#usage with projects
npm init
npm install packages

##yarn?
#Node.js >=16.10
corepack enable
yarn && yarn start
```

## projects

* [todo-react](https://github.com/hong539/todo-react)