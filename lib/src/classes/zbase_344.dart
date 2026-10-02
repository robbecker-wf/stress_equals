import 'zbase.dart';

class ZBase_344 extends ZBase {
  int _val;
  ZBase_344(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_344');
    return other is ZBase_344 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_344');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_344($_val)';

}
