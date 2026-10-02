import 'zbase.dart';

class ZBase_621 extends ZBase {
  int _val;
  ZBase_621(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_621');
    return other is ZBase_621 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_621');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_621($_val)';

}
