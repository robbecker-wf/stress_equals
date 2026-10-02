import 'zbase.dart';

class ZBase_3546 extends ZBase {
  int _val;
  ZBase_3546(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3546');
    return other is ZBase_3546 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3546');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3546($_val)';

}
