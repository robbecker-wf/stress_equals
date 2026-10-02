import 'zbase.dart';

class ZBase_318 extends ZBase {
  int _val;
  ZBase_318(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_318');
    return other is ZBase_318 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_318');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_318($_val)';

}
