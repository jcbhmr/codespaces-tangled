#!/usr/bin/env bash
set -euo pipefail

printf '%s\n' "Running 'ssh-keygen' to generate a new Ed25519 private & public key pair" >2
ssh-keygen -q -f ~/.ssh/id_ed25519 -t ed25519 -N ""
ssh_public_key=$(< ~/.ssh/id_ed25519)

printf '%s\n' "USER ACTION REQUIRED:" >2
printf '%s\n' "Navigate to https://tangled.org/settings/keys" >2
printf '%s\n' "and add the following public key:" >2
printf '%s\n' "$ssh_public_key" >2
printf '%s\n' "Press ENTER to continue" >2
read

printf '%s\n' "USER INPUT REQUIRED:" >2
printf '%s\n' "Your ATproto username:" >2
read atp_username
printf '%s\n' "Your Tangled repository name:" >2
read tangled_repo_name

printf '%s\n' "Removing everything in $PWD" >2
find . -mindepth 1 -delete

remote="git@tangled.org:$atp_username/$tangled_repo_name"
printf '%s\n' "Cloning $remote into $PWD" >2
git clone "$remote" .

printf '%s\n' "USER ACTION REQUIRED:" >2
printf '%s\n' "Rebuild this dev container to use the repository's configuration" >2
