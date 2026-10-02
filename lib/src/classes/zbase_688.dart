import 'zbase.dart';

class ZBase_688 extends ZBase {
  int _val;
  ZBase_688(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_688');
    return other is ZBase_688 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_688');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_688($_val)';

}
