import 'zbase.dart';

class ZBase_3962 extends ZBase {
  int _val;
  ZBase_3962(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3962');
    return other is ZBase_3962 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3962');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3962($_val)';

}
