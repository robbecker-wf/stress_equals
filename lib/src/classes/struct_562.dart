import 'thrift.dart' as thrift;
import 'struct_561.dart' as t_prev;

class Struct_562 implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('Struct_562');
  static final thrift.TField _ID_FIELD_DESC = thrift.TField('id', thrift.TType.I32, 1);
  static final thrift.TField _NAME_FIELD_DESC = thrift.TField('name', thrift.TType.STRING, 2);
  static final thrift.TField _DESCRIPTION_FIELD_DESC = thrift.TField('description', thrift.TType.STRING, 3);
  static final thrift.TField _COUNT_FIELD_DESC = thrift.TField('count', thrift.TType.I32, 4);
  static final thrift.TField _TAGS_FIELD_DESC = thrift.TField('tags', thrift.TType.LIST, 5);
  static final thrift.TField _CHILD_FIELD_DESC = thrift.TField('child', thrift.TType.STRUCT, 6);

  int? _id = 0;
  static const int ID = 1;
  bool __isset_id = false;
  String? _name;
  static const int NAME = 2;
  String? _description;
  static const int DESCRIPTION = 3;
  int? _count;
  static const int COUNT = 4;
  bool __isset_count = false;
  List<String>? _tags;
  static const int TAGS = 5;
  t_prev.Struct_561? _child;
  static const int CHILD = 6;

  int? get id => this._id;

  set id(int? id) {
    this._id = id;
    this.__isset_id = true;
  }

  bool isSetId() => this.__isset_id;

  unsetId() {
    this.__isset_id = false;
  }

  String? get name => this._name;

  set name(String? name) {
    this._name = name;
  }

  bool isSetName() => this._name != null;

  unsetName() {
    this._name = null;
  }

  String? get description => this._description;

  set description(String? description) {
    this._description = description;
  }

  bool isSetDescription() => this._description != null;

  unsetDescription() {
    this._description = null;
  }

  int? get count => this._count;

  set count(int? count) {
    this._count = count;
    this.__isset_count = true;
  }

  bool isSetCount() => this.__isset_count;

  unsetCount() {
    this.__isset_count = false;
  }

  List<String>? get tags => this._tags;

  set tags(List<String>? tags) {
    this._tags = tags;
  }

  bool isSetTags() => this._tags != null;

  unsetTags() {
    this._tags = null;
  }

  t_prev.Struct_561? get child => this._child;

  set child(t_prev.Struct_561? child) {
    this._child = child;
  }

  bool isSetChild() => this._child != null;

  unsetChild() {
    this._child = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ID:
        return this._id;
      case NAME:
        return this._name;
      case DESCRIPTION:
        return this._description;
      case COUNT:
        return this._count;
      case TAGS:
        return this._tags;
      case CHILD:
        return this._child;
      default:
        throw ArgumentError('Field $fieldID doesn\'t exist!');
    }
  }

  @override
  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case ID:
        if (value == null) {
          this.__isset_id = false;
        } else {
          this._id = value as int?; this.__isset_id = true;
        }
        break;

      case NAME:
        if (value == null) {
          this._name = null;
        } else {
          this._name = value as String?;
        }
        break;

      case DESCRIPTION:
        if (value == null) {
          this._description = null;
        } else {
          this._description = value as String?;
        }
        break;

      case COUNT:
        if (value == null) {
          this.__isset_count = false;
        } else {
          this._count = value as int?; this.__isset_count = true;
        }
        break;

      case TAGS:
        if (value == null) {
          this._tags = null;
        } else {
          this._tags = value as List<String>?;
        }
        break;

      case CHILD:
        if (value == null) {
          this._child = null;
        } else {
          this._child = value as t_prev.Struct_561?;
        }
        break;

      default:
        throw ArgumentError('Field $fieldID doesn\'t exist!');
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ID:
        return this.__isset_id;
      case NAME:
        return this._name != null;
      case DESCRIPTION:
        return this._description != null;
      case COUNT:
        return this.__isset_count;
      case TAGS:
        return this._tags != null;
      case CHILD:
        return this._child != null;
      default:
        throw ArgumentError('Field $fieldID doesn\'t exist!');
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case ID:
          if (field.type == thrift.TType.I32) {
            this._id = iprot.readI32(); this.__isset_id = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NAME:
          if (field.type == thrift.TType.STRING) {
            this._name = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DESCRIPTION:
          if (field.type == thrift.TType.STRING) {
            this._description = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COUNT:
          if (field.type == thrift.TType.I32) {
            this._count = iprot.readI32(); this.__isset_count = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TAGS:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem0 = iprot.readListBegin();
            final elem1 = <String>[];
            for (int elem2 = 0; elem2 < elem0.length; ++elem2) {
              String elem3 = iprot.readString();
              elem1.add(elem3);
            }
            iprot.readListEnd();
            this._tags = elem1;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CHILD:
          if (field.type == thrift.TType.STRUCT) {
            final elem4 = t_prev.Struct_561();
            elem4.read(iprot);
            this._child = elem4;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    _validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    _validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    final elem5 = this._id;
    oprot.writeFieldBegin(_ID_FIELD_DESC);
    oprot.writeI32(elem5);
    oprot.writeFieldEnd();
    final elem6 = this._name;
    if (elem6 != null) {
      oprot.writeFieldBegin(_NAME_FIELD_DESC);
      oprot.writeString(elem6);
      oprot.writeFieldEnd();
    }
    final elem7 = this._description;
    if (elem7 != null) {
      oprot.writeFieldBegin(_DESCRIPTION_FIELD_DESC);
      oprot.writeString(elem7);
      oprot.writeFieldEnd();
    }
    final elem8 = this._count;
    if (this.__isset_count) {
      oprot.writeFieldBegin(_COUNT_FIELD_DESC);
      oprot.writeI32(elem8);
      oprot.writeFieldEnd();
    }
    final elem9 = this._tags;
    if (elem9 != null) {
      oprot.writeFieldBegin(_TAGS_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.STRING, elem9.length));
      for (var elem10 in elem9) {
        oprot.writeString(elem10);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    final elem11 = this._child;
    if (elem11 != null) {
      oprot.writeFieldBegin(_CHILD_FIELD_DESC);
      elem11.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('Struct_562(');

    ret.write('id:');
    ret.write(this._id);

    ret.write(', ');
    ret.write('name:');
    if (this._name == null) {
      ret.write('null');
    } else {
      ret.write(this._name);
    }

    if (this._description != null) {
      ret.write(', ');
      ret.write('description:');
      if (this._description == null) {
        ret.write('null');
      } else {
        ret.write(this._description);
      }
    }

    if (this.__isset_count) {
      ret.write(', ');
      ret.write('count:');
      ret.write(this._count);
    }

    if (this._tags != null) {
      ret.write(', ');
      ret.write('tags:');
      if (this._tags == null) {
        ret.write('null');
      } else {
        ret.write(this._tags);
      }
    }

    if (this._child != null) {
      ret.write(', ');
      ret.write('child:');
      if (this._child == null) {
        ret.write('null');
      } else {
        ret.write(this._child);
      }
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is Struct_562) {
      return this._id == o._id &&
          this._name == o._name &&
          this._description == o._description &&
          this._count == o._count &&
          const thrift.DeepCollectionEquality().equals(this._tags, o._tags) &&
          this._child == o._child;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this._id.hashCode;
    value = (value * 31) ^ this._name.hashCode;
    value = (value * 31) ^ this._description.hashCode;
    value = (value * 31) ^ this._count.hashCode;
    value = (value * 31) ^ const thrift.DeepCollectionEquality().hash(this._tags);
    value = (value * 31) ^ this._child.hashCode;
    return value;
  }

  Struct_562 clone({int? id, String? name, String? description, int? count, List<String>? tags, t_prev.Struct_561? child}) {
    return Struct_562()
      .._id = id ?? this._id
      ..__isset_id = true
      .._name = name ?? this._name
      .._description = description ?? this._description
      .._count = count ?? this._count
      ..__isset_count = true
      .._tags = tags ?? this._tags
      .._child = child ?? this._child;
  }

  validate() => _validate();

  _validate() {
    // check for required fields
    if (this._name == null) {
      throw thrift.TProtocolError("Required field 'name' wasn't present in the struct Struct_562");
    }
  }
}

class Client_562 {
  Client_562(this._protocol);

  final thrift.TProtocol _protocol;

  late final _fetch_fmethod = thrift.FMethod(this._fetch, 'Service_562', 'fetchStruct562');

  Future<Struct_562?> fetchStruct562(thrift.FContext ctx, int? id, Struct_562? request) {
    return this._fetch_fmethod([ctx, id, request]).then((value) => value as Struct_562?);
  }

  Future<Struct_562?> _fetch(thrift.FContext ctx, int? id, Struct_562? request) async {
    request?.write(_protocol);
    final result = Struct_562();
    result.read(_protocol);
    return result;
  }
}
