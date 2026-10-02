import 'zbase.dart';

class ZBase_408 extends ZBase {
  int _val;
  ZBase_408(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_408');
    return other is ZBase_408 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_408');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_408($_val)';

}
