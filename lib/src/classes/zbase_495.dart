import 'zbase.dart';

class ZBase_495 extends ZBase {
  int _val;
  ZBase_495(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_495');
    return other is ZBase_495 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_495');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_495($_val)';

}
