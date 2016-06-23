# ergodox-compiler

[Link to Docker hub](https://hub.docker.com/r/lcourtois/ergodox-compiler/)

This container uses [benblazak's ergodox-firmware](https://github.com/benblazak/ergodox-firmware)
It is inspired by [this docker container](https://hub.docker.com/r/potz/ergodox-ez-compiler/)

You must have the keymap.c and keymap.h in the same folder.
If you have your keymap files in ~/myKeymap folder, follow this command

```
docker run -v ~/myKeymap:/keymap lcourtois/ergodox-compiler
```

It will be generate 2 files in ~/myKeymap : firmware.hex and firmware.eep
