_add_uuid(){
    cat > /user/bin/clientadd
    #!bin/bash
    while getopts :u: flag
	do
		case ${flag} in
			u) guuid=$OPTARG;;
			?) echo "I dont know what is $OPTARG is"
		esac
	done

	sed -i '12 a \                                        {\n                                                "id": "'${guuid}'",\n                                                "level": 1,\n                                                "alterId": 0\n                                        },' $v2ray_server_config
	echo "Added!"
	systemctl restart v2ray

    chmode +x /user/bin/clientadd
}