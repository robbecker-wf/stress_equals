import 'zbase.dart';

class ZBase_2877 extends ZBase {
  int _val;
  ZBase_2877(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2877');
    return other is ZBase_2877 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2877');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2877($_val)';

}
