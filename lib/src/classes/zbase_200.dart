import 'zbase.dart';

class ZBase_200 extends ZBase {
  int _val;
  ZBase_200(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_200');
    return other is ZBase_200 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_200');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_200($_val)';

}
