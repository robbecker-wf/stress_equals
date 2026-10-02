import 'zbase.dart';

class ZBase_2325 extends ZBase {
  int _val;
  ZBase_2325(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2325');
    return other is ZBase_2325 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2325');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2325($_val)';

}
