import 'zbase.dart';

class ZBase_936 extends ZBase {
  int _val;
  ZBase_936(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_936');
    return other is ZBase_936 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_936');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_936($_val)';

}
