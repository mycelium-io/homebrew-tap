# homebrew-tap

Mycelium is no longer installed with Homebrew. The formula here is deprecated
and gets no new versions.

Install Mycelium with the installer instead. On an Apple silicon Mac it installs
the Mycelium app with its own hub. Anywhere else it installs the CLI:

```bash
curl -fsSL https://mycelium-io.github.io/mycelium/install.sh | bash
```

If you installed with Homebrew before, you're on the Docker setup. Remove the
Homebrew copy, then install with `--docker` to keep that setup and the rooms on
it:

```bash
brew uninstall mycelium
brew untap mycelium-io/tap
curl -fsSL https://mycelium-io.github.io/mycelium/install.sh | bash -s -- --docker
```

Without `--docker`, an Apple silicon Mac gets the app instead, which runs a new
hub of its own beside your Docker one.

Install docs: <https://mycelium-io.github.io/mycelium/>
