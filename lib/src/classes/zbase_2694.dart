import 'zbase.dart';

class ZBase_2694 extends ZBase {
  int _val;
  ZBase_2694(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2694');
    return other is ZBase_2694 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2694');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2694($_val)';

}
