import 'zbase.dart';

class ZBase_335 extends ZBase {
  int _val;
  ZBase_335(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_335');
    return other is ZBase_335 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_335');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_335($_val)';

}
