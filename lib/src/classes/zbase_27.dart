import 'zbase.dart';

class ZBase_27 extends ZBase {
  int _val;
  ZBase_27(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_27');
    return other is ZBase_27 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_27');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_27($_val)';

}
