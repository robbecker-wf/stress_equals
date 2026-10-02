import 'zbase.dart';

class ZBase_92 extends ZBase {
  int _val;
  ZBase_92(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_92');
    return other is ZBase_92 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_92');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_92($_val)';

}
