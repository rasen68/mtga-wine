#!/bin/bash
if ! [ -d wine-11.17-staging-tkg-amd64 ]; then
	curl -L -O https://github.com/Kron4ek/Wine-Builds/releases/download/11.17/wine-11.17-staging-tkg-amd64.tar.xz
	tar -xvf wine-11.17-staging-tkg-amd64.tar.xz
	rm -f wine-11.17-staging-tkg-amd64.tar.xz
fi

MTGADIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
WINEBIN="$MTGADIR/bin/_mtga-wine"
if ! [ -d "$MTGADIR/.wine" ]; then
	"$WINEBIN" winecfg
fi

"$MTGADIR"/bin/mtga update
