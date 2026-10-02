import 'zbase.dart';

class ZBase_660 extends ZBase {
  int _val;
  ZBase_660(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_660');
    return other is ZBase_660 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_660');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_660($_val)';

}
