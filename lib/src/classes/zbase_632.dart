import 'zbase.dart';

class ZBase_632 extends ZBase {
  int _val;
  ZBase_632(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_632');
    return other is ZBase_632 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_632');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_632($_val)';

}
