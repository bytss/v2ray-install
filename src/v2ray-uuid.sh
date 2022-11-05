_uuid_manager() {
	while :; do
	echo "---------- V2Ray UUID Manager -------------"
	echo
	echo "1. Add UUID"
	echo
	echo "2. Delete UUID"
	echo
	read -p "$(echo -e "Please select a menu [${magenta}1-2$none]:")" choose
	if [[ -z $choose ]]; then
			exit 1
		else
			case $choose in
			1)
				echo 'Hello World'
				break
				;;
			2)
				echo 'Hello Mars'
				break
				;;
			esac
		fi
	done
}
