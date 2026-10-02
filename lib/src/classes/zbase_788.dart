import 'zbase.dart';

class ZBase_788 extends ZBase {
  int _val;
  ZBase_788(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_788');
    return other is ZBase_788 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_788');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_788($_val)';

}
