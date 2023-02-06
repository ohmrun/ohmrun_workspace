## Haxe Workspace


```bash
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

Try the next command when done
```bash
  stx_workspace_sanity
```

Will install the direnv version of Python, anything from the Pipfile, asdf and then nodejs, neko and haxe.

create a new folder for your project
```bash
cd .. && mkdir project && cd project
```


User wherever stx_workspace is located  
```bash
echo "source_env ../stx_workspace" > .envrc && direnv allow
```



