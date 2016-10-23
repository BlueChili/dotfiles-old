if status --is-login
	eval (docker-machine env)
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
