import 'zbase.dart';

class ZBase_840 extends ZBase {
  int _val;
  ZBase_840(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_840');
    return other is ZBase_840 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_840');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_840($_val)';

}
