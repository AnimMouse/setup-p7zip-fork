# Setup new p7zip fork for GitHub Actions
Setup [new p7zip fork](https://github.com/p7zip-project/p7zip) (7zip CLI for Linux) on GitHub Actions to use `/opt/7z`.

This action installs the [new p7zip fork](https://github.com/p7zip-project/p7zip) with additional codecs and improvements for use in actions by installing it on tool cache using [AnimMouse/tool-cache](https://github.com/AnimMouse/tool-cache).

With the new p7zip fork, you can now use [Zstandard (`zstd`)](https://github.com/facebook/zstd/), [Brotli](https://github.com/google/brotli/), [LZ4](https://github.com/lz4/lz4/), [LZ5](https://github.com/inikep/lz5/), [Lizard](https://github.com/inikep/lizard/), and [Fast LZMA2](https://github.com/conor42/fast-lzma2) on p7zip in GitHub Actions. 

This action only works on Ubuntu.

## Usage
To use `7za`, run this action before `7za`.

```yaml
steps:
  - name: Setup p7zip fork
    uses: AnimMouse/setup-p7zip-fork@v2
    
  - run: 7za i
```

### Specific version
You can specify the version you want. By default, this action downloads the latest version if version is not specified.

```yaml
steps:
  - name: Setup p7zip fork
    uses: AnimMouse/setup-p7zip-fork@v2
    with:
      version: v17.05
      
  - run: 7za i
```

### GitHub token
This action automatically uses a GitHub token in order to authenticate with the GitHub API and avoid rate limiting. You can also specify your own read-only fine-grained personal access token.

```yaml
steps:
  - name: Setup p7zip fork
    uses: AnimMouse/setup-p7zip-fork@v2
    with:
      token: ${{ secrets.GH_PAT }}
```