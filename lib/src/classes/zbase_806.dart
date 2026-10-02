import 'zbase.dart';

class ZBase_806 extends ZBase {
  int _val;
  ZBase_806(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_806');
    return other is ZBase_806 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_806');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_806($_val)';

}
