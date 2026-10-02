import 'zbase.dart';

class ZBase_2343 extends ZBase {
  int _val;
  ZBase_2343(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2343');
    return other is ZBase_2343 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2343');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2343($_val)';

}
