import 'zbase.dart';

class ZBase_943 extends ZBase {
  int _val;
  ZBase_943(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_943');
    return other is ZBase_943 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_943');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_943($_val)';

}
