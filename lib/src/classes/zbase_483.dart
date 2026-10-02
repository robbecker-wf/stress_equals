import 'zbase.dart';

class ZBase_483 extends ZBase {
  int _val;
  ZBase_483(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_483');
    return other is ZBase_483 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_483');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_483($_val)';

}
