#!/bin/bash

##	Unpacks the game assets that are heavly compressed and removes them on uninstall

## arg 1:  the new package version
post_install() {
	unpack_game_assets
}

## arg 1:  the new package version
## arg 2:  the old package version
pre_upgrade() {
	remove_game_assets
}

## arg 1:  the new package version
## arg 2:  the old package version
post_upgrade() {
	unpack_game_assets
}

## arg 1:  the old package version
pre_remove() {
	remove_game_assets
}

remove_game_assets() {
	local game="fractalus"
	rm -r /usr/share/$game/$game
	rm /usr/share/$game/$game.iso
}

unpack_game_assets() {
	source ctos-functions

	local instdir='/usr/share'
	local vm='/usr/bin/scummvm'
	local game='fractalus'
	local workdir="$instdir/$game"
	local gamepkg="$workdir/$game"
	local lName='Rescue on Fractalus'
	line_break '#'
	cd "$workdir"
	echo "Unpacking $lName ..."
	if !( lrzuntar "$gamepkg-v1.tar.lrz" ); then
		something_wrong
	else
		echo "move path:"
		echo "$workdir/$game-v1/$game.iso"
		mv "$workdir/$game-v1/$game.iso" ./
		if !(xorriso -osirrox on -indev "$game.iso" -extract / ./); then
			something_wrong
		else
			rm "$gamepkg-v1.tar.lrz"
			rm "$gamepkg.iso"
			rm -r "$gamepkg-v1/"
		fi
	fi
}
