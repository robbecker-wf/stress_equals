import 'zbase.dart';

class ZBase_418 extends ZBase {
  int _val;
  ZBase_418(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_418');
    return other is ZBase_418 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_418');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_418($_val)';

}
