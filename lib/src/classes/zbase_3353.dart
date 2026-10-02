import 'zbase.dart';

class ZBase_3353 extends ZBase {
  int _val;
  ZBase_3353(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3353');
    return other is ZBase_3353 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3353');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3353($_val)';

}
