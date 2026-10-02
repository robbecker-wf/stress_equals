import 'zbase.dart';

class ZBase_184 extends ZBase {
  int _val;
  ZBase_184(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_184');
    return other is ZBase_184 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_184');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_184($_val)';

}
