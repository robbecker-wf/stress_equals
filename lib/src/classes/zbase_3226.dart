import 'zbase.dart';

class ZBase_3226 extends ZBase {
  int _val;
  ZBase_3226(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3226');
    return other is ZBase_3226 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3226');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3226($_val)';

}
