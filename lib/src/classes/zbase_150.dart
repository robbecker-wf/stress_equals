import 'zbase.dart';

class ZBase_150 extends ZBase {
  int _val;
  ZBase_150(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_150');
    return other is ZBase_150 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_150');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_150($_val)';

}
