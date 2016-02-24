if status --is-login
	eval (docker-machine env)
end

function l
	ls -al $argv
end

function md
	mkdir $argv
end
