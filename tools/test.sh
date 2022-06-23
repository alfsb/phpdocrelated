
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 [pr number]" >&2
    exit 1
fi

source wipe.sh

rm patch.txt
wget "https://patch-diff.githubusercontent.com/raw/php/doc-pt_br/pull/$1.patch" -O patch.txt
(cd pt_BR; git apply ../patch.txt 2>&1 | tee ../merge.txt)

php doc-base/configure.php --with-lang=pt_BR --enable-xml-details
(cd pt_BR; git status)
(cd pt_BR; git diff)

echo
echo "If OK, accept the pull on GitHub and then "
echo "    ./wipe.sh"
echo
