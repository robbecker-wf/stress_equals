import 'zbase.dart';

class ZBase_93 extends ZBase {
  int _val;
  ZBase_93(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_93');
    return other is ZBase_93 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_93');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_93($_val)';

}
