## Haxe Workspace

bash
```
  curl -sfL https://direnv.net/install.sh | bash
```

hook into the shell

see https://direnv.net/docs/hook.html


```
git clone --recursive https://github.com/ohmrun/stx_workspace.git
cd stx_workspace
direnv allow
```

Will install the direnv version of Python, anything from the Pipfile, asdf and then neko and haxe.