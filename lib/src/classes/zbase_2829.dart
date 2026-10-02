import 'zbase.dart';

class ZBase_2829 extends ZBase {
  int _val;
  ZBase_2829(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2829');
    return other is ZBase_2829 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2829');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2829($_val)';

}
