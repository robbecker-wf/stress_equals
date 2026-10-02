import 'zbase.dart';

class ZBase_882 extends ZBase {
  int _val;
  ZBase_882(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_882');
    return other is ZBase_882 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_882');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_882($_val)';

}
