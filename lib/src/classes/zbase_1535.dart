import 'zbase.dart';

class ZBase_1535 extends ZBase {
  int _val;
  ZBase_1535(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1535');
    return other is ZBase_1535 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1535');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1535($_val)';

}
