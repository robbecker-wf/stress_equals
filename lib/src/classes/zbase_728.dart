import 'zbase.dart';

class ZBase_728 extends ZBase {
  int _val;
  ZBase_728(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_728');
    return other is ZBase_728 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_728');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_728($_val)';

}
