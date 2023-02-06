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

## To use the binaries in a project, 

create a new folder

```bash
cd .. && mkdir project && cd project
```


A dotenv should be located at $HOME/.config/stx.env containing the environment variable $STX_WORKSPACE_DIR.


```bash
echo -e "dotenv $HOME/.config/stx.env \nsource_env $STX_WORKSPACE_DIR" > .envrc && direnv allow                                                                                           
```



