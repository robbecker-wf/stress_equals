import 'zbase.dart';

class ZBase_834 extends ZBase {
  int _val;
  ZBase_834(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_834');
    return other is ZBase_834 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_834');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_834($_val)';

}
