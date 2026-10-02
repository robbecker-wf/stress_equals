import 'zbase.dart';

class ZBase_939 extends ZBase {
  int _val;
  ZBase_939(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_939');
    return other is ZBase_939 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_939');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_939($_val)';

}
