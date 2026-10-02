import 'zbase.dart';

class ZBase_152 extends ZBase {
  int _val;
  ZBase_152(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_152');
    return other is ZBase_152 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_152');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_152($_val)';

}
