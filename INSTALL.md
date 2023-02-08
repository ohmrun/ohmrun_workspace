[ ]: ];eval "$(sed -n '/^```/ {s|^```|#!/usr/bin/env |p;q;}' $0; sed -n '/^```/,/^```/p' $0 | sed 's/^```.*//g'; echo exit \$?);exit \$?"

clone repo recursively
```bash
git clone --recursive https://github.com/ohmrun/stx_workspace.git
```

Run setup by using `direnv allow`
```bash
cd stx_workspace && direnv allow
```

Try the next command when done. There should be no errors.
```bash
  stx-workspace-sanity
```
