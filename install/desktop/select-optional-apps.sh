if [[ -v FEDOMAKUB_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$FEDOMAKUB_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for app in $apps; do
			source "$FEDOMAKUB_PATH/install/desktop/optional/app-${app,,}.sh"
		done
	fi
fi
