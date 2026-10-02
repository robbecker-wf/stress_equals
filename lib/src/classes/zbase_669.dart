import 'zbase.dart';

class ZBase_669 extends ZBase {
  int _val;
  ZBase_669(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_669');
    return other is ZBase_669 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_669');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_669($_val)';

}
