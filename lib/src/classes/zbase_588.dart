import 'zbase.dart';

class ZBase_588 extends ZBase {
  int _val;
  ZBase_588(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_588');
    return other is ZBase_588 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_588');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_588($_val)';

}
