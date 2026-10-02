import 'zbase.dart';

class ZBase_647 extends ZBase {
  int _val;
  ZBase_647(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_647');
    return other is ZBase_647 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_647');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_647($_val)';

}
