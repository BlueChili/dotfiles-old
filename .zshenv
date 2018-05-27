# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Setup the manta cli environment
export TRITON_CLOUD_USER_NAME="bluechili"
export MANTA_URL="https://us-east.manta.joyent.com"
export MANTA_USER=$TRITON_CLOUD_USER_NAME
unset MANTA_SUBUSER
export MANTA_KEY_ID="$(ssh-keygen -l -f $HOME/.ssh/bluechili-at-joyent.pub | awk '{print $2}')"

# Setup Triton cli environment
export TRITON_PROFILE="env"
export TRITON_URL="https://us-east-1.api.joyent.com"
export TRITON_ACCOUNT="bluechili"
unset TRITON_USER
export TRITON_KEY_ID="$(ssh-keygen -l -f $HOME/.ssh/bluechili-at-joyent.pub | awk '{print $2}')"
unset TRITON_TESTING
unset TRITON_PROFILE
