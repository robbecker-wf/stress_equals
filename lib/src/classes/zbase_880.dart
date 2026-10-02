import 'zbase.dart';

class ZBase_880 extends ZBase {
  int _val;
  ZBase_880(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_880');
    return other is ZBase_880 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_880');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_880($_val)';

}
