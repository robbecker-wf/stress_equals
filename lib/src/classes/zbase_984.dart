import 'zbase.dart';

class ZBase_984 extends ZBase {
  int _val;
  ZBase_984(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_984');
    return other is ZBase_984 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_984');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_984($_val)';

}
