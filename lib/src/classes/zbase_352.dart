import 'zbase.dart';

class ZBase_352 extends ZBase {
  int _val;
  ZBase_352(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_352');
    return other is ZBase_352 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_352');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_352($_val)';

}
