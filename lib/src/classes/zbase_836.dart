import 'zbase.dart';

class ZBase_836 extends ZBase {
  int _val;
  ZBase_836(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_836');
    return other is ZBase_836 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_836');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_836($_val)';

}
