import 'zbase.dart';

class ZBase_539 extends ZBase {
  int _val;
  ZBase_539(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_539');
    return other is ZBase_539 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_539');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_539($_val)';

}
