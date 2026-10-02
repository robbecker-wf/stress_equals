import 'zbase.dart';

class ZBase_167 extends ZBase {
  int _val;
  ZBase_167(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_167');
    return other is ZBase_167 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_167');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_167($_val)';

}
