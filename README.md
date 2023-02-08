## Haxe Workspace

## Note: 
Right now this takes ages to set up because it's loading all the interpreters and building some from source. To limit that time see the `.tool-versions` file and adjust to taste

`direnv` is required.

```bash
  curl -sfL https://direnv.net/install.sh | bash
```

hook into the shell

see https://direnv.net/docs/hook.html


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

Will install the direnv version of Python, anything from the Pipfile, asdf and then nodejs, neko and haxe.


## To use the binaries in a project, 

create a new folder

```bash
cd .. && mkdir project && cd project
```

run the following command to setup a workspace
```bash
echo -e "dotenv $HOME/.config/stx.env \nsource_env \$STX_WORKSPACE_DIR" > .envrc && direnv allow
```

### Notes

A dotenv should be set up by .envrc located at $HOME/.config/stx.env containing the environment variable $STX_WORKSPACE_DIR.


### Layout

.env.local is checked in and necessary
.env is loaded next and hidden from git
.env.machine is loaded after that for tweaks


the stx folder contains the bootsrapping code and is divided into the following folders
i is checked in
i/run are scripts on the PATH as set in 
u is for stuff you might want to back up for reasons of bandwidth
o is in the .gitignore and holds a lot of the stuff from asdf and opam
