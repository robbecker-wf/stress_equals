import 'zbase.dart';

class ZBase_894 extends ZBase {
  int _val;
  ZBase_894(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_894');
    return other is ZBase_894 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_894');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_894($_val)';

}
