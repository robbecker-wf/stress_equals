import 'zbase.dart';

class ZBase_928 extends ZBase {
  int _val;
  ZBase_928(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_928');
    return other is ZBase_928 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_928');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_928($_val)';

}
