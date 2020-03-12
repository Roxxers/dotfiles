# Create a new directory and enter it
function mkd() {
	mkdir -p "$argv";cd "$argv";
}

function tombs() {
	sudo swapoff -a
	tomb $@
	sudo swapon /swapfile
	swapon --show
}

