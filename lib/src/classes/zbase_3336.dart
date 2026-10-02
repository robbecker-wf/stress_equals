import 'zbase.dart';

class ZBase_3336 extends ZBase {
  int _val;
  ZBase_3336(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3336');
    return other is ZBase_3336 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3336');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3336($_val)';

}
