import 'zbase.dart';

class ZBase_715 extends ZBase {
  int _val;
  ZBase_715(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_715');
    return other is ZBase_715 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_715');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_715($_val)';

}
