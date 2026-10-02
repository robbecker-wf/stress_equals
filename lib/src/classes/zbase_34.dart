import 'zbase.dart';

class ZBase_34 extends ZBase {
  int _val;
  ZBase_34(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_34');
    return other is ZBase_34 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_34');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_34($_val)';

}
