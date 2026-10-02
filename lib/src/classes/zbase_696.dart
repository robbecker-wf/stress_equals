import 'zbase.dart';

class ZBase_696 extends ZBase {
  int _val;
  ZBase_696(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_696');
    return other is ZBase_696 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_696');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_696($_val)';

}
