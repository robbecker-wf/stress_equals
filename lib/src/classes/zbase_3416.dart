import 'zbase.dart';

class ZBase_3416 extends ZBase {
  int _val;
  ZBase_3416(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3416');
    return other is ZBase_3416 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3416');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3416($_val)';

}
