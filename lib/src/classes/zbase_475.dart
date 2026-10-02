import 'zbase.dart';

class ZBase_475 extends ZBase {
  int _val;
  ZBase_475(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_475');
    return other is ZBase_475 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_475');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_475($_val)';

}
