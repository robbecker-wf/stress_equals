import 'zbase.dart';

class ZBase_3093 extends ZBase {
  int _val;
  ZBase_3093(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3093');
    return other is ZBase_3093 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3093');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3093($_val)';

}
