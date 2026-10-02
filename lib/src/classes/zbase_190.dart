import 'zbase.dart';

class ZBase_190 extends ZBase {
  int _val;
  ZBase_190(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_190');
    return other is ZBase_190 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_190');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_190($_val)';

}
