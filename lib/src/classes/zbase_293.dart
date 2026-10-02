import 'zbase.dart';

class ZBase_293 extends ZBase {
  int _val;
  ZBase_293(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_293');
    return other is ZBase_293 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_293');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_293($_val)';

}
