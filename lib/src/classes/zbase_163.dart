import 'zbase.dart';

class ZBase_163 extends ZBase {
  int _val;
  ZBase_163(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_163');
    return other is ZBase_163 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_163');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_163($_val)';

}
