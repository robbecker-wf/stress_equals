import 'zbase.dart';

class ZBase_286 extends ZBase {
  int _val;
  ZBase_286(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_286');
    return other is ZBase_286 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_286');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_286($_val)';

}
