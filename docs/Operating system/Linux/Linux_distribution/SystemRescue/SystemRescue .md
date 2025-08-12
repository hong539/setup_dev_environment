# SystemRescue

## Guides/Tips

* [www.system-rescue.org](https://www.system-rescue.org/)
* [www.system-rescue.org/manual](https://www.system-rescue.org/manual/)
* [https://www.system-rescue.org/Modules](https://www.system-rescue.org/Modules/)
    * All SRM modules must be placed in the directory designated by the archisobasedir boot parameter (“sysresccd” by default) on the boot disk. This is one directory above where the airootfs.sfs file is stored.
* [www.system-rescue.org/scripts/build-zfs-srm](https://www.system-rescue.org/scripts/build-zfs-srm/)
* [www.system-rescue.org/scripts/sysrescue-customize](https://www.system-rescue.org/scripts/sysrescue-customize/)

* mkdir sysresccd under iso_add

```shell
tree .
.
├── sysrescue-customize
├── sysrescue-customize-recipe-example
│   ├── build_into_srm
│   │   └── root
│   ├── iso_add
│   │   ├── autorun
│   │   │   ├── autorun1
│   │   │   ├── autorun2
│   │   │   └── autorun3
│   │   ├── sysresccd
│   │   │   ├── sysrescue-12.01-zfs.srm
│   │   │   └── sysrescue-12.01-zfs.txt
│   │   └── sysrescue.d
│   │       └── 500-settings.yaml
│   └── README
├── sysrescue-customize-recipe-example.tar.gz
├── systemrescue-12.01-amd64-custom.iso
└── systemrescue-12.01-amd64.iso

8 directories, 11 files
```