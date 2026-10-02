import 'zbase.dart';

class ZBase_306 extends ZBase {
  int _val;
  ZBase_306(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_306');
    return other is ZBase_306 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_306');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_306($_val)';

}
