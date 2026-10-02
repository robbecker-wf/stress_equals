import 'zbase.dart';

class ZBase_535 extends ZBase {
  int _val;
  ZBase_535(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_535');
    return other is ZBase_535 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_535');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_535($_val)';

}
