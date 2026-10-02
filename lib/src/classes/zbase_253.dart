import 'zbase.dart';

class ZBase_253 extends ZBase {
  int _val;
  ZBase_253(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_253');
    return other is ZBase_253 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_253');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_253($_val)';

}
