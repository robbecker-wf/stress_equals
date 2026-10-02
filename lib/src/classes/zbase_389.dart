import 'zbase.dart';

class ZBase_389 extends ZBase {
  int _val;
  ZBase_389(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_389');
    return other is ZBase_389 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_389');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_389($_val)';

}
