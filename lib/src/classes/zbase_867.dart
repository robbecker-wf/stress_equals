import 'zbase.dart';

class ZBase_867 extends ZBase {
  int _val;
  ZBase_867(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_867');
    return other is ZBase_867 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_867');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_867($_val)';

}
