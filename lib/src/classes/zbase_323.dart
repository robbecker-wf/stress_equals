import 'zbase.dart';

class ZBase_323 extends ZBase {
  int _val;
  ZBase_323(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_323');
    return other is ZBase_323 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_323');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_323($_val)';

}
