import 'zbase.dart';

class ZBase_3661 extends ZBase {
  int _val;
  ZBase_3661(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3661');
    return other is ZBase_3661 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3661');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3661($_val)';

}
