set -e

ascii_art='
___________        .___                     __        ___.
\_   _____/___   __| _/____   _____ _____  |  | ____ _\_ |__
 |    __)/ __ \ / __ |/  _ \ /     \\__  \ |  |/ /  |  \ __ \
 |     \\  ___// /_/ (  <_> )  Y Y  \/ __ \|    <|  |  / \_\ \
 \___  / \___  >____ |\____/|__|_|  (____  /__|_ \____/|___  /
     \/      \/     \/            \/     \/     \/         \/

'

echo -e "$ascii_art"
echo "=> Fedomakub is for fresh Fedorda 41+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo dnf update -y >/dev/null
sudo dnf install -y git >/dev/null

echo "Cloning Fedomakub..."
rm -rf ~/.local/share/fedomakub
git clone https://github.com/Josh-Voyles/fedomakub.git ~/.local/share/fedomakub >/dev/null
# FEDOMAKUB_REF? Check
if [[ $FEDOMAKUB_REF != "master" ]]; then
	cd ~/.local/share/fedomakub
	git fetch origin "${FEDOMAKUB_REF:-stable}" && git checkout "${FEDOMAKUB_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/fedomakub/install.sh
