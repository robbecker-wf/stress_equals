import 'zbase.dart';

class ZBase_659 extends ZBase {
  int _val;
  ZBase_659(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_659');
    return other is ZBase_659 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_659');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_659($_val)';

}
