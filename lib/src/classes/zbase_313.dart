import 'zbase.dart';

class ZBase_313 extends ZBase {
  int _val;
  ZBase_313(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_313');
    return other is ZBase_313 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_313');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_313($_val)';

}
