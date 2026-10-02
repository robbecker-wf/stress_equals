import 'zbase.dart';

class ZBase_628 extends ZBase {
  int _val;
  ZBase_628(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_628');
    return other is ZBase_628 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_628');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_628($_val)';

}
