import 'zbase.dart';

class ZBase_861 extends ZBase {
  int _val;
  ZBase_861(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_861');
    return other is ZBase_861 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_861');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_861($_val)';

}
