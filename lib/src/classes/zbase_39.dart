import 'zbase.dart';

class ZBase_39 extends ZBase {
  int _val;
  ZBase_39(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_39');
    return other is ZBase_39 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_39');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_39($_val)';

}
