# mgMK
Magisk Make - a build helper for Magisk

## requirements
- a `tmpfs` or `ramfs` on `/tmp`
 - or at least a /tmp folder. Though I'd recommend having a ramdisk mounted there.
- `zip`
- `platform-tools`
- probably a lot more

## getting started
- Source the `activate` script from a modern Bourne-Again Shell - or bash, for sane people
- ~~Chicken out because my docs are hot garbage or you're on Windows~~ run `mgmk init` from the `/modules` folder you should be in now
- Begin developing
- Increase the version with `mgmk inc (major|minor|patch) [module.prop]`
- build with `mgmk build .`

## pre-processing
- all files that end in `~` are removed automagically. Use `build.sh` to move these files to the right place, in case you really have to.
- `build.sh` is run from the project root, which is passed along as `$BUILDPATH`
