#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'

if [[ -z "${SSH_PRIVATE_KEY:-}" ]]; then
    echo "SSH_PRIVATE_KEY is not set" >&2
    exit 1
fi

mkdir -pm 700 ~/.ssh
install -m 600 <(printf '%s\n' "$SSH_PRIVATE_KEY") ~/.ssh/id_unknown
ssh_public_key=$(ssh-keygen -yf ~/.ssh/id_unknown)
type=$(printf '%s\n' "$ssh_public_key" | cut -d' ' -f1)
case "$type" in
    ssh-ed25519) suffix='_ed25519' ;;
    ssh-rsa) suffix='_rsa' ;;
    *) echo "Unknown key type: $type" >&2; exit 1 ;;
esac
mv -f ~/.ssh/id_unknown ~/.ssh/id"$suffix"
install -m 644 <(printf '%s\n' "$ssh_public_key") ~/.ssh/id"$suffix".pub
ssh_config=$'Host *\n\tStrictHostKeyChecking accept-new'
if [[ -f ~/.ssh/config ]]; then
    printf '\n%s\n' "$ssh_config" >> ~/.ssh/config
else
    install -m 600 <(printf '%s\n' "$ssh_config") ~/.ssh/config
fi
