cat *.output  |grep -E "HOST|Address|PUPPET_VER|VM_ROLE" | awk -F= '{print $2}' >o.tmp

cat -A o.tmp | tr -d "^[[ " |sed 's/1\;32m//g' >w.lst
