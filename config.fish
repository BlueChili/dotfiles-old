if status --is-login
	eval (docker-machine env)
end

function sdc-docker
  export DOCKER_CERT_PATH=/Users/BlueChili/.sdc/docker/german
  export DOCKER_HOST=tcp://us-east-1.docker.joyent.com:2376
  export DOCKER_CLIENT_TIMEOUT=300
  export COMPOSE_HTTP_TIMEOUT=300
  export DOCKER_TLS_VERIFY=1
end

function l
	ls -al $argv
end

function vim
	nvim $argv
end

function md
	mkdir -p $argv
end

function mtr
	meteor $argv
end

function ghci
  stack ghci $argv
end

function gst
  git st $argv
end

function gcm
  git cm $argv
end

function gcko
  git checkout $argv
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
