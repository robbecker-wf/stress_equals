import 'zbase.dart';

class ZBase_259 extends ZBase {
  int _val;
  ZBase_259(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_259');
    return other is ZBase_259 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_259');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_259($_val)';

}
