import 'zbase.dart';

class ZBase_811 extends ZBase {
  int _val;
  ZBase_811(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_811');
    return other is ZBase_811 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_811');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_811($_val)';

}
