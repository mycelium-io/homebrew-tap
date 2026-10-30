# homebrew-tap

Mycelium is no longer installed with Homebrew. The formula here is deprecated
and gets no new versions.

Install Mycelium with the installer instead. On an Apple silicon Mac it installs
the Mycelium app with its own hub; anywhere else it installs the CLI:

```bash
curl -fsSL https://mycelium-io.github.io/mycelium/install.sh | bash
```

If you installed with Homebrew before, remove that copy first:

```bash
brew uninstall mycelium
brew untap mycelium-io/tap
```

Install docs: <https://mycelium-io.github.io/mycelium/>
