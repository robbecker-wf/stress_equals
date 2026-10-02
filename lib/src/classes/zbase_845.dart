import 'zbase.dart';

class ZBase_845 extends ZBase {
  int _val;
  ZBase_845(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_845');
    return other is ZBase_845 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_845');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_845($_val)';

}
