
echo "starting ...";

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
INSTALL_DIR="${SCRIPT_DIR}/.."

echo $SCRIPT_DIR;

# dirname $EXE_DIR;

# echo $DIR;

ls -al $INSTALL_DIR;

git clone https://github.com/alexstanciu-1/dp-vm "$INSTALL_DIR/vm"

cd "$INSTALL_DIR/vm/vagrant" && vagrant up

