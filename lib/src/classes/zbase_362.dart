import 'zbase.dart';

class ZBase_362 extends ZBase {
  int _val;
  ZBase_362(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_362');
    return other is ZBase_362 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_362');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_362($_val)';

}
