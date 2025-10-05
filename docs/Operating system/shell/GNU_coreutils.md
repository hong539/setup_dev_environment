# GNU coreutils

## Docs/Tips/MISC...etc

* [wiki.archlinux.org/title/Core_utilities](https://wiki.archlinux.org/title/Core_utilities)
* [GNU coreutils online help](https://www.gnu.org/software/coreutils/)
    * [touch](https://www.gnu.org/software/coreutils/touch)
        * [How to `touch` files recursively?](https://askubuntu.com/questions/580409/how-to-touch-files-recursively)
        * [askubuntu/touch-in-for-loop](https://askubuntu.com/questions/1102663/touch-in-for-loop)
        * [how-to-touch-files-per-each-counting-in-loop-in-bash](https://stackoverflow.com/questions/21201082/how-to-touch-files-per-each-counting-in-loop-in-bash)
* [Linux 上的 GNU sed 與 macOS 內的 sed 的 in-place 差異](https://blog.gslin.org/archives/2024/06/19/11855/linux-%E4%B8%8A%E7%9A%84-gnu-sed-%E8%88%87-macos-%E5%85%A7%E7%9A%84-sed-%E7%9A%84-in-place-%E5%B7%AE%E7%95%B0/)

```shell
#touch tip01
touch pro{01..07}.cpp

#touch tip02
for f in *; do touch "${f}_"; done

##touch tip03
for (( i = 1 ; i <= num ; ++i )) ; do
    touch /tmp/pages/$i.txt
done

tar -czvf file.tar.gz directory
```