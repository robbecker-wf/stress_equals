import 'zbase.dart';

class ZBase_393 extends ZBase {
  int _val;
  ZBase_393(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_393');
    return other is ZBase_393 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_393');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_393($_val)';

}
