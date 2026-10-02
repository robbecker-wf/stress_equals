import 'zbase.dart';

class ZBase_405 extends ZBase {
  int _val;
  ZBase_405(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_405');
    return other is ZBase_405 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_405');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_405($_val)';

}
