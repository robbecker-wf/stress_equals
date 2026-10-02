import 'zbase.dart';

class ZBase_3007 extends ZBase {
  int _val;
  ZBase_3007(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3007');
    return other is ZBase_3007 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3007');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3007($_val)';

}
