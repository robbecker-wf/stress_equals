import 'zbase.dart';

class ZBase_350 extends ZBase {
  int _val;
  ZBase_350(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_350');
    return other is ZBase_350 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_350');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_350($_val)';

}
