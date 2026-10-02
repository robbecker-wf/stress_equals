import 'zbase.dart';

class ZBase_482 extends ZBase {
  int _val;
  ZBase_482(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_482');
    return other is ZBase_482 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_482');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_482($_val)';

}
