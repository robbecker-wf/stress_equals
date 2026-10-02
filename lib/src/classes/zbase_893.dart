import 'zbase.dart';

class ZBase_893 extends ZBase {
  int _val;
  ZBase_893(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_893');
    return other is ZBase_893 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_893');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_893($_val)';

}
