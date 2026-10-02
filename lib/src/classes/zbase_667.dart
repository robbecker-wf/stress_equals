import 'zbase.dart';

class ZBase_667 extends ZBase {
  int _val;
  ZBase_667(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_667');
    return other is ZBase_667 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_667');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_667($_val)';

}
