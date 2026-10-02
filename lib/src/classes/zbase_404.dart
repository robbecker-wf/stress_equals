import 'zbase.dart';

class ZBase_404 extends ZBase {
  int _val;
  ZBase_404(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_404');
    return other is ZBase_404 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_404');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_404($_val)';

}
