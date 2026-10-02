import 'zbase.dart';

class ZBase_948 extends ZBase {
  int _val;
  ZBase_948(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_948');
    return other is ZBase_948 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_948');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_948($_val)';

}
