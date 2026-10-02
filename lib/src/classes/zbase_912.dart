import 'zbase.dart';

class ZBase_912 extends ZBase {
  int _val;
  ZBase_912(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_912');
    return other is ZBase_912 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_912');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_912($_val)';

}
