package stx.control.device;

enum ArchitectureSum{
  Amd64();
  X86();
  Arm();
}
@:using(stx.workspace.device.Architecture.ArchitectureLift)
abstract Architecture(ArchitectureSum) from ArchitectureSum to ArchitectureSum{
  static public var _(default,never) = ArchitectureLift;
  public inline function new(self:ArchitectureSum) this = self;
  @:noUsing static inline public function lift(self:ArchitectureSum):Architecture return new Architecture(self);

  public function prj():ArchitectureSum return this;
  private var self(get,never):Architecture;
  private function get_self():Architecture return lift(this);
}
class ArchitectureLift{
  static public inline function lift(self:ArchitectureSum):Architecture{
    return Architecture.lift(self);
  }
}