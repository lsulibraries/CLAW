# Islandora Camel Services
echo "Building Islandora Camel Services"

HOME_DIR=$1

if [ -f "$HOME_DIR/islandora/install/configs/variables" ]; then
  . "$HOME_DIR"/islandora/install/configs/variables
fi

# Chown everything over to the vagrant user just in case
chown -R vagrant:vagrant "$HOME_DIR/.m2"

cd "$HOME_DIR/islandora/camel"

sudo -u vagrant mvn install

