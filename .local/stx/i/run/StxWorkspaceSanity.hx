package stx.i.run;

class StxWorkspaceSanity{
  static public function main(){
    Sys.println('haxe --run $$STX_WORKSPACE_DIR/.local/stx/i/run/StxWorkspaceSanity.hx');
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