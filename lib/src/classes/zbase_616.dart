import 'zbase.dart';

class ZBase_616 extends ZBase {
  int _val;
  ZBase_616(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_616');
    return other is ZBase_616 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_616');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_616($_val)';

}
