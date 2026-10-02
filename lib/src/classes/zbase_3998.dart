import 'zbase.dart';

class ZBase_3998 extends ZBase {
  int _val;
  ZBase_3998(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3998');
    return other is ZBase_3998 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3998');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3998($_val)';

}
