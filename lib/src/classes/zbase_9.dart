import 'zbase.dart';

class ZBase_9 extends ZBase {
  int _val;
  ZBase_9(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_9');
    return other is ZBase_9 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_9');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_9($_val)';

}
