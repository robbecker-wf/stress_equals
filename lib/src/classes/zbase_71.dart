import 'zbase.dart';

class ZBase_71 extends ZBase {
  int _val;
  ZBase_71(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_71');
    return other is ZBase_71 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_71');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_71($_val)';

}
