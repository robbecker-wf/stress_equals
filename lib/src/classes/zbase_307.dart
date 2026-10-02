import 'zbase.dart';

class ZBase_307 extends ZBase {
  int _val;
  ZBase_307(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_307');
    return other is ZBase_307 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_307');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_307($_val)';

}
