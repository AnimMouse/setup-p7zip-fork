# Setup new p7zip fork
Setup [new p7zip fork](https://github.com/jinfeihan57/p7zip) on GitHub Actions to use `7z_`.

This action installs the [new p7zip fork](https://github.com/jinfeihan57/p7zip) with additional codecs and improvements for use in actions by installing it on /usr/local/bin.

With the new p7zip fork, you can now use [Zstandard (`zstd`)](https://github.com/facebook/zstd/), [Brotli](https://github.com/google/brotli/), [LZ4](https://github.com/lz4/lz4/), [LZ5](https://github.com/inikep/lz5/), [Lizard](https://github.com/inikep/lizard/), and [Fast LZMA2](https://github.com/conor42/fast-lzma2) on GitHub Actions. 

This action only works on Ubuntu virtual environments.

## Usage
To use `7z_`, run this action before `7z_`.

```yml
steps:
  - uses: actions/checkout@v2
    
  - name: Setup p7zip fork
    uses: AnimMouse/setup-p7zip-fork@v1
    
  - run: 7z_ a archive.7z -m0=bcj -m1=zstd -mx22
```

## Set version
To use version other than the latest one:

```yml
steps:
  - name: Setup p7zip fork
    uses: AnimMouse/setup-p7zip-fork@v1
    with:
      # Set the version to use. Default: v17.04
      version: v17.04
      
  - run: 7z_ i
```

### Why `7z_`?
So that we can also use the original [p7zip](https://sourceforge.net/projects/p7zip/) along with the new p7zip fork.

```yml
steps:
  - name: Setup p7zip fork
    uses: AnimMouse/setup-p7zip-fork@v1
    
  - run: 7z_ i
    
  - run: 7z i
```