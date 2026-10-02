import 'zbase.dart';

class ZBase_664 extends ZBase {
  int _val;
  ZBase_664(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_664');
    return other is ZBase_664 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_664');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_664($_val)';

}
