import 'zbase.dart';

class ZBase_105 extends ZBase {
  int _val;
  ZBase_105(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_105');
    return other is ZBase_105 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_105');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_105($_val)';

}
