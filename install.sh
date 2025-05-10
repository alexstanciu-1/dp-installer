
echo "starting ...";

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
INSTALL_DIR="${SCRIPT_DIR}/.."

echo $SCRIPT_DIR;

# dirname $EXE_DIR;

# echo $DIR;

ls -al $INSTALL_DIR;

git clone https://github.com/alexstanciu-1/dp-vm "$INSTALL_DIR/vm"

mkdir "$INSTALL_DIR/lib"

git clone https://github.com/alexstanciu-1/omi-frame "$INSTALL_DIR/lib/omi-frame"
git clone https://github.com/alexstanciu-1/descriptivejs "$INSTALL_DIR/lib/descriptivejs"
git clone https://github.com/alexstanciu-1/dp-engine.git "$INSTALL_DIR/lib/dp-engine"

cd "$INSTALL_DIR/vm/vagrant" && vagrant provision
cd "$INSTALL_DIR/vm/vagrant" && vagrant up
