import 'zbase.dart';

class ZBase_168 extends ZBase {
  int _val;
  ZBase_168(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_168');
    return other is ZBase_168 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_168');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_168($_val)';

}
