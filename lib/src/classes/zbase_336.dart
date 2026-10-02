import 'zbase.dart';

class ZBase_336 extends ZBase {
  int _val;
  ZBase_336(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_336');
    return other is ZBase_336 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_336');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_336($_val)';

}
