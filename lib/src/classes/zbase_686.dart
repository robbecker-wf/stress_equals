import 'zbase.dart';

class ZBase_686 extends ZBase {
  int _val;
  ZBase_686(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_686');
    return other is ZBase_686 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_686');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_686($_val)';

}
