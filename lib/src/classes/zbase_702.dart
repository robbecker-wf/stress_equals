import 'zbase.dart';

class ZBase_702 extends ZBase {
  int _val;
  ZBase_702(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_702');
    return other is ZBase_702 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_702');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_702($_val)';

}
