import 'zbase.dart';

class ZBase_2664 extends ZBase {
  int _val;
  ZBase_2664(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2664');
    return other is ZBase_2664 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2664');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2664($_val)';

}
