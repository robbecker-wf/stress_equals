import 'zbase.dart';

class ZBase_949 extends ZBase {
  int _val;
  ZBase_949(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_949');
    return other is ZBase_949 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_949');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_949($_val)';

}
