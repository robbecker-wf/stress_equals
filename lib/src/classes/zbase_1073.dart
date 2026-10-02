import 'zbase.dart';

class ZBase_1073 extends ZBase {
  int _val;
  ZBase_1073(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_1073');
    return other is ZBase_1073 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_1073');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_1073($_val)';

}
