import 'zbase.dart';

class ZBase_60 extends ZBase {
  int _val;
  ZBase_60(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_60');
    return other is ZBase_60 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_60');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_60($_val)';

}
