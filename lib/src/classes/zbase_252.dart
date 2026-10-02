import 'zbase.dart';

class ZBase_252 extends ZBase {
  int _val;
  ZBase_252(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_252');
    return other is ZBase_252 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_252');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_252($_val)';

}
