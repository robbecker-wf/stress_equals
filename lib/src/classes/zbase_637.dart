import 'zbase.dart';

class ZBase_637 extends ZBase {
  int _val;
  ZBase_637(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_637');
    return other is ZBase_637 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_637');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_637($_val)';

}
