# GitHub Codespaces ♥️ Tangled

You can use GitHub Codespaces as your cloud IDE to work on Git projects hosted on [Tangled](https://tangled.org).

**One time setup:**

1. Fork this repository under your own account. You will need to configure some codespaces secrets for your forked copy of this repository.
2. Create a new SSH key pair. Use `ssh-keygen` or an online SSH key generator.
3. Add the generated SSH public key to your Tangled profile.
4. Set the `SSH_PRIVATE_KEY` repository codespaces secret to your generated SSH private key. This secret will be supplied as an environment variable to all codespaces tied to this repository.

**Use the template:**

_Make sure a Tangled repository already exists to `git clone` from._

1. Click "Use this template" and then "Open in a codespace".
2. `find . -mindepth 1 -delete` to remove everything from the codespace's source tree.
3. `git clone <tangled-ssh-clone-url> .` to clone your Tangled repository into the current empty directory. Your SSH private key should already be populated.

It's recommended to include [`ssh-import-from-env.bash`](.devcontainer/ssh-import-from-env.bash) in your dev container configuration so that if you ever trigger "Rebuild container" your SSH private key is automatically populated.
