import 'zbase.dart';

class ZBase_3647 extends ZBase {
  int _val;
  ZBase_3647(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3647');
    return other is ZBase_3647 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3647');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3647($_val)';

}
