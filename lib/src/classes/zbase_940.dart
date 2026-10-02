import 'zbase.dart';

class ZBase_940 extends ZBase {
  int _val;
  ZBase_940(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_940');
    return other is ZBase_940 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_940');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_940($_val)';

}
