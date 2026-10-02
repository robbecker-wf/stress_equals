import 'zbase.dart';

class ZBase_504 extends ZBase {
  int _val;
  ZBase_504(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_504');
    return other is ZBase_504 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_504');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_504($_val)';

}
