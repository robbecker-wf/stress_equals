import 'zbase.dart';

class ZBase_738 extends ZBase {
  int _val;
  ZBase_738(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_738');
    return other is ZBase_738 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_738');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_738($_val)';

}
