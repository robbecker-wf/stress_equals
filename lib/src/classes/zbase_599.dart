import 'zbase.dart';

class ZBase_599 extends ZBase {
  int _val;
  ZBase_599(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_599');
    return other is ZBase_599 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_599');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_599($_val)';

}
