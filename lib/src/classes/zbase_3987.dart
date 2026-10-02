import 'zbase.dart';

class ZBase_3987 extends ZBase {
  int _val;
  ZBase_3987(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3987');
    return other is ZBase_3987 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3987');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3987($_val)';

}
