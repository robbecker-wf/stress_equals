import 'zbase.dart';

class ZBase_449 extends ZBase {
  int _val;
  ZBase_449(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_449');
    return other is ZBase_449 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_449');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_449($_val)';

}
