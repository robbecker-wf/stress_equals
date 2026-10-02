import 'zbase.dart';

class ZBase_558 extends ZBase {
  int _val;
  ZBase_558(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_558');
    return other is ZBase_558 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_558');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_558($_val)';

}
