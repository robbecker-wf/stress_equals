import 'zbase.dart';

class ZBase_174 extends ZBase {
  int _val;
  ZBase_174(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_174');
    return other is ZBase_174 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_174');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_174($_val)';

}
