import 'zbase.dart';

class ZBase_3866 extends ZBase {
  int _val;
  ZBase_3866(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3866');
    return other is ZBase_3866 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3866');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3866($_val)';

}
