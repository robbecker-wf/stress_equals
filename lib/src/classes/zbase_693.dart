import 'zbase.dart';

class ZBase_693 extends ZBase {
  int _val;
  ZBase_693(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_693');
    return other is ZBase_693 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_693');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_693($_val)';

}
