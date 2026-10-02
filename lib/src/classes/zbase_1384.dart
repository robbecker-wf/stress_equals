import 'zbase.dart';

class ZBase_1384 extends ZBase {
  int _val;
  ZBase_1384(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1384');
    return other is ZBase_1384 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1384');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1384($_val)';

}
