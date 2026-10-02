import 'zbase.dart';

class ZBase_1332 extends ZBase {
  int _val;
  ZBase_1332(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1332');
    return other is ZBase_1332 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1332');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1332($_val)';

}
