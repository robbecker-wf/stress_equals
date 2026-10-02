import 'zbase.dart';

class ZBase_3115 extends ZBase {
  int _val;
  ZBase_3115(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3115');
    return other is ZBase_3115 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3115');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3115($_val)';

}
