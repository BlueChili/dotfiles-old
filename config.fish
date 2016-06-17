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
