#!/bin/bash
SCRIPTDIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

WINEBIN="$SCRIPTDIR/winebin"
"$WINEBIN" wine installer.msi
