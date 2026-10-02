import 'zbase.dart';

class ZBase_725 extends ZBase {
  int _val;
  ZBase_725(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_725');
    return other is ZBase_725 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_725');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_725($_val)';

}
