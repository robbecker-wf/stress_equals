import 'zbase.dart';

class ZBase_825 extends ZBase {
  int _val;
  ZBase_825(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_825');
    return other is ZBase_825 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_825');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_825($_val)';

}
