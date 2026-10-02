import 'zbase.dart';

class ZBase_566 extends ZBase {
  int _val;
  ZBase_566(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_566');
    return other is ZBase_566 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_566');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_566($_val)';

}
