import 'zbase.dart';

class ZBase_736 extends ZBase {
  int _val;
  ZBase_736(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_736');
    return other is ZBase_736 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_736');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_736($_val)';

}
