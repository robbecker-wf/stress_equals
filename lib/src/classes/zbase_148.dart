import 'zbase.dart';

class ZBase_148 extends ZBase {
  int _val;
  ZBase_148(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_148');
    return other is ZBase_148 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_148');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_148($_val)';

}
