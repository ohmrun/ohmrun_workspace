package stx.control.device;

enum OsIdSum{
  Windows();
  Linux();
  Mac();
}
@:using(stx.workspace.device.OsId.OsIdLift)
abstract OsId(OsIdSum) from OsIdSum to OsIdSum{
  static public var _(default,never) = OsIdLift;
  public inline function new(self:OsIdSum) this = self;
  @:noUsing static inline public function lift(self:OsIdSum):OsId return new OsId(self);

  public function prj():OsIdSum return this;
  private var self(get,never):OsId;
  private function get_self():OsId return lift(this);
}
class OsIdLift{
  static public inline function lift(self:OsIdSum):OsId{
    return OsId.lift(self);
  }
}