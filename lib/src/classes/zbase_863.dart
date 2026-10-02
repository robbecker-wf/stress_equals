import 'zbase.dart';

class ZBase_863 extends ZBase {
  int _val;
  ZBase_863(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_863');
    return other is ZBase_863 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_863');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_863($_val)';

}
