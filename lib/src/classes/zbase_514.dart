import 'zbase.dart';

class ZBase_514 extends ZBase {
  int _val;
  ZBase_514(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_514');
    return other is ZBase_514 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_514');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_514($_val)';

}
