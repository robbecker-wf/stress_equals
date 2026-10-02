import 'zbase.dart';

class ZBase_391 extends ZBase {
  int _val;
  ZBase_391(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_391');
    return other is ZBase_391 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_391');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_391($_val)';

}
