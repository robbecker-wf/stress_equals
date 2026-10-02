import 'zbase.dart';

class ZBase_500 extends ZBase {
  int _val;
  ZBase_500(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_500');
    return other is ZBase_500 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_500');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_500($_val)';

}
