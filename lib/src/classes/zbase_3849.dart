import 'zbase.dart';

class ZBase_3849 extends ZBase {
  int _val;
  ZBase_3849(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3849');
    return other is ZBase_3849 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3849');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3849($_val)';

}
