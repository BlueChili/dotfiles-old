if status --is-login
	eval (docker-machine env)
end

function sdc-docker
	# triton
	export TRITON_PROFILE="us-east"
	# docker
  export DOCKER_CERT_PATH=/Users/BlueChili/.sdc/docker/german
	export DOCKER_CERT_PATH=/Users/BlueChili/.triton/docker/bluechili@us-east-1_api_joyent_com
  export DOCKER_HOST=tcp://us-east-1.docker.joyent.com:2376
  export DOCKER_CLIENT_TIMEOUT=300
  export COMPOSE_HTTP_TIMEOUT=300
	export COMPOSE_HTTP_TIMEOUT=300
	export DOCKER_TLS_VERIFY=1
	# smartdc
	export SDC_URL="https://us-east-1.api.joyent.com"
	export SDC_ACCOUNT="bluechili"
	set -e SDC_USER
	export SDC_KEY_ID="10:07:78:33:84:c0:07:79:27:4d:58:c0:9c:d9:70:02"
	set -e SDC_TESTING
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

function dknets
  docker network ls
end

function dknetadd
  docker network create $argv
end

function dknetrm
  docker network rm $argv
end

function dknetshow
  docker network inspect $argv
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
