# Create a new directory and enter it
function mkd() {
	mkdir -p "$argv";cd "$argv";
}

totp_uri() { 
  # Args are Secret - Username - Provider
	echo "otpauth://totp/${2}?secret=${1}&issuer=${3}"                                    
}
