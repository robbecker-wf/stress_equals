import 'zbase.dart';

class ZBase_245 extends ZBase {
  int _val;
  ZBase_245(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_245');
    return other is ZBase_245 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_245');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_245($_val)';

}
