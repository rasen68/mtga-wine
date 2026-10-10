#!/bin/bash
if ! [ -d wine-11.17-staging-tkg-amd64 ]; then
	curl -L -O https://github.com/Kron4ek/Wine-Builds/releases/download/11.17/wine-11.17-staging-tkg-amd64.tar.xz
	tar -xvf wine-11.17-staging-tkg-amd64.tar.xz
	rm -f wine-11.17-staging-tkg-amd64.tar.xz
fi

SCRIPTDIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
WINEBIN="$SCRIPTDIR/_mtga-wine"
if ! [ -d "$SCRIPTDIR/.wine" ]; then
	"$WINEBIN" winecfg
fi

MSI_URL=`curl https://mtgarena.downloads.wizards.com/Live/Windows32/version | jq -r .CurrentInstallerURL`
curl $MSI_URL --output installer.msi

"$WINEBIN" wine installer.msi
