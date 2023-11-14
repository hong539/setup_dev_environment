# GNU coreutils

## Docs

* [GNU coreutils online help](https://www.gnu.org/software/coreutils/)
    * [touch](https://www.gnu.org/software/coreutils/touch)
        * [How to `touch` files recursively?](https://askubuntu.com/questions/580409/how-to-touch-files-recursively)
        * [askubuntu/touch-in-for-loop](https://askubuntu.com/questions/1102663/touch-in-for-loop)
        * [how-to-touch-files-per-each-counting-in-loop-in-bash](https://stackoverflow.com/questions/21201082/how-to-touch-files-per-each-counting-in-loop-in-bash)

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