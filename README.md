# Magisk Make
Magisk Make - a build helper for Magisk

## Requirements
- A `tmpfs` or `ramfs` on `/tmp`
 - Any `/tmp` folder, really. Though I'd recommend having a ramdisk mounted there.
- `zip`
- `platform-tools`
- probably a lot more. You'll figure it out.

## Getting Started
- Source the `activate` script from a modern Bash shell.
- ~~Chicken out because my docs are dumpsterfire or you're on Windows~~
- Run `mgmk init` from the `/modules` folder you should be in now

- Increase the version with `mgmk inc (major|minor|patch) [module.prop]`
- build with `mgmk build .`

## Pre-Processing
- `build.sh` is run from the project root, which is passed along as `$BUILDPATH` - very helpful for removing unnecessary folders
- Zip is set to replace symlinks with the source file, keep that in mind.
- Some files are removed automagically:
 - `/.gitignore`
 - `/.git` - force-recursively
 - Anything that matches the glob `*~` - use a buildscript if you REALLY need these files
