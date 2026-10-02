import 'zbase.dart';

class ZBase_3675 extends ZBase {
  int _val;
  ZBase_3675(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3675');
    return other is ZBase_3675 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3675');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3675($_val)';

}
