package stx.i.run;

class StxWorkspaceSanity{
  static public function main(){
    Sys.println('cd $$STX_WORKSPACE_DIR && haxe -cp $$STX_WORKSPACE_DIR/.local --run stx.i.run.StxWorkspaceSanity');
    Sys.println('________________________________________________________________________________');
    Sys.print('python ');
    Sys.command("python --version");
    Sys.print('haxe ');
    Sys.command("haxe --version");
    Sys.print('neko ');
    Sys.command("neko -version");
    Sys.command("plz --version");
    //Sys.print('bb ');
    Sys.command("bb --version");
  }
}