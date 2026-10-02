import 'zbase.dart';

class ZBase_46 extends ZBase {
  int _val;
  ZBase_46(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_46');
    return other is ZBase_46 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_46');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_46($_val)';

}
