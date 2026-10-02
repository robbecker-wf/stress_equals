import 'zbase.dart';

class ZBase_898 extends ZBase {
  int _val;
  ZBase_898(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_898');
    return other is ZBase_898 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_898');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_898($_val)';

}
