# GitHub Codespaces ♥️ Tangled

You can use GitHub Codespaces as your cloud IDE to work on Git projects hosted on [Tangled](https://tangled.org).

TODO
<!--

## Setup

_This guide assumes you are using [Bluesky](https://bsky.social)._

1. Navigate to https://bsky.app/settings/app-passwords. Create an app password.
2. Navigate to https://github.com/settings/codespaces.
3. Set the secret `ATP_USERNAME` to your ATproto username. Expose it to `jcbhmr/codespaces-tangled`.
4. Set the secret `ATP_PASSWORD` to your app password. Expose it to `jcbhmr/codespaces-tangled`.

## Usage

1. Ensure that your Tangled repository exists.
2. Click "Use this template" and "Open in a codespace".
3. `find . -mindepth 1 -delete` to remove everything.
4. `ssh-keygen -t ed25519 -C '<repo>@codespaces'` to create a new SSH key.
5. `cat ~/.ssh/id_ed25519.pub` and copy it.
6. Navigate to https://tangled.org/settings/keys. Add your SSH public key.
7. `git clone git@tangled.org:<owner>/<repo> .` to clone your Tangled repository.
8. `git push --dry-run` to ensure your SSH key has write access.
9. Ensure that `.devcontainer/devcontainer.json` includes steps to automatically use 
10. Rebuild your dev container to use the Tangled repository's configuration.

_Make sure a Tangled repository already exists to `git clone` from._

1. Click "Use this template" and then "Open in a codespace".
2. `find . -mindepth 1 -delete` to remove everything from the codespace's source tree.
3. `git clone <tangled-ssh-clone-url> .` to clone your Tangled repository into the current empty directory. Your SSH private key should already be populated.

It's recommended to include [`ssh-import-from-env.bash`](.devcontainer/ssh-import-from-env.bash) in your dev container configuration so that if you ever trigger "Rebuild container" your SSH private key is automatically populated.

-->