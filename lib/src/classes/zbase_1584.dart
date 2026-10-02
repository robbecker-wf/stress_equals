import 'zbase.dart';

class ZBase_1584 extends ZBase {
  int _val;
  ZBase_1584(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1584');
    return other is ZBase_1584 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1584');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1584($_val)';

}
