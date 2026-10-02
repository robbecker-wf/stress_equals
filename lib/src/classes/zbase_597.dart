import 'zbase.dart';

class ZBase_597 extends ZBase {
  int _val;
  ZBase_597(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_597');
    return other is ZBase_597 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_597');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_597($_val)';

}
