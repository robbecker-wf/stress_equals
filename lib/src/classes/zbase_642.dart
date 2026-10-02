import 'zbase.dart';

class ZBase_642 extends ZBase {
  int _val;
  ZBase_642(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_642');
    return other is ZBase_642 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_642');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_642($_val)';

}
