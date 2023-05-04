# javascript

## basic

* [JavaScript Tutorial](https://www.w3schools.com/js/)

## frameworks or packages

* [nvm](https://github.com/nvm-sh/nvm)
    * Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
* [nodejs](https://nodejs.org/en)
    * Node.js® is an open-source, cross-platform JavaScript runtime environment.
    * [arch linux/node.js wiki pages](https://wiki.archlinux.org/title/node.js_)
* [react](https://zh-hant.legacy.reactjs.org/)
* [Next.js](https://nextjs.org/docs)

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
```