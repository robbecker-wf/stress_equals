import 'zbase.dart';

class ZBase_103 extends ZBase {
  int _val;
  ZBase_103(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_103');
    return other is ZBase_103 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_103');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_103($_val)';

}
