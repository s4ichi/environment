TYPE ?= macos

all: before mitamae after

before:
	wget https://github.com/k0kubun/mitamae/releases/download/v1.0.0/mitamae-x86_64-linux -O ${PWD}/mitamae

mitamae:
	${PWD}/mitamae local -y nodes/$(TYPE).yml bootstrap.rb

after:
	rm ${PWD}/mitamae

clean:
	rm ${PWD}/mitamae
	${PWD}/mitamae local clean.rb