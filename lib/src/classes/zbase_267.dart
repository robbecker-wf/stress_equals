import 'zbase.dart';

class ZBase_267 extends ZBase {
  int _val;
  ZBase_267(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_267');
    return other is ZBase_267 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_267');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_267($_val)';

}
