import 'zbase.dart';

class ZBase_467 extends ZBase {
  int _val;
  ZBase_467(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_467');
    return other is ZBase_467 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_467');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_467($_val)';

}
