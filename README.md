# npatches

***N***pm package ***PATCHES***

### ⚠️ WARNIG ⚠️

This patch is just my workaround. I can't guarantee it will work.

# usage

Add a symbolic link to the patch file to `patches` directory.

```bash
$ yarn add patch-package <this repo url>#<tag>
$ mkdir -p patches && \
   cd patches && \
   ln -s ../node_modules/@yamatomo/npatches/patch_files/<some patch file>.patch . 
```
