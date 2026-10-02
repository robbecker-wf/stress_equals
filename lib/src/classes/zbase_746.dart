import 'zbase.dart';

class ZBase_746 extends ZBase {
  int _val;
  ZBase_746(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_746');
    return other is ZBase_746 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_746');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_746($_val)';

}
