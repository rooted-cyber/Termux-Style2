#!/data/data/com.termux/files/usr/bin/sh

red='\033[1;31m'
a='\033[1;32m'
b='\033[1;33m'
blue='\033[1;34m'
d='\033[1;35m'
e='\033[1;36m'
v='\033[1;90m'
w='\033[1;91m'
x='\033[1;92m'
y='\033[1;93m'
cc='\033[1;91m'
aa='\033[1;95m'
bb='\033[1;96m'

echo "$a Temux-Stylish $b" - https://github.com/Android-Maruf/Termux-Stylish1
echo "https://github.com/Android-Maruf/Termux-Style2"
echo " "
echo "$red Get Many Github link $blue" - github-link
echo " "
echo "$d Get color info $e"  - color
echo " "
if [ $# = 0 ] && [ -f $PREFIX/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	cat $PREFIX/etc/motd
fi

if [ -G ~/.termux/shell ]; then
	export SHELL="`realpath ~/.termux/shell`"
else
	for file in $PREFIX/bin/bash $PREFIX/bin/sh /system/bin/sh; do
		if [ -x $file ]; then
			export SHELL=$file
			break
		fi
	done
fi

if [ -f $PREFIX/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
	$SHELL -c "busybox true" > /dev/null 2>&1 || unset LD_PRELOAD
fi

if [ -n "$TERM" ]; then
	exec "$SHELL" -l "$@"
else
	exec "$SHELL" "$@"
fi
