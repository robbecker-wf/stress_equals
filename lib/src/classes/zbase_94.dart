import 'zbase.dart';

class ZBase_94 extends ZBase {
  int _val;
  ZBase_94(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_94');
    return other is ZBase_94 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_94');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_94($_val)';

}
