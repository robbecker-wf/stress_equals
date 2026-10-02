import 'zbase.dart';

class ZBase_460 extends ZBase {
  int _val;
  ZBase_460(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_460');
    return other is ZBase_460 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_460');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_460($_val)';

}
