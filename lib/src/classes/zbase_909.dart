import 'zbase.dart';

class ZBase_909 extends ZBase {
  int _val;
  ZBase_909(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_909');
    return other is ZBase_909 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_909');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_909($_val)';

}
