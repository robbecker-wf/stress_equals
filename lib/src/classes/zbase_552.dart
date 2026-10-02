import 'zbase.dart';

class ZBase_552 extends ZBase {
  int _val;
  ZBase_552(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_552');
    return other is ZBase_552 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_552');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_552($_val)';

}
