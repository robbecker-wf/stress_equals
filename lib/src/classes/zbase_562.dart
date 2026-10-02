import 'zbase.dart';

class ZBase_562 extends ZBase {
  int _val;
  ZBase_562(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_562');
    return other is ZBase_562 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_562');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_562($_val)';

}
