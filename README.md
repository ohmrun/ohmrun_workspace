## Haxe Workspace

bash
```
  curl -sfL https://direnv.net/install.sh | bash
```

hook into the shell

see https://direnv.net/docs/hook.html


```bash
git clone --recursive https://github.com/ohmrun/stx_workspace.git
```
```bash
cd stx_workspace
```
```bash
direnv allow
```

Will install the direnv version of Python, anything from the Pipfile, asdf and then neko and haxe.