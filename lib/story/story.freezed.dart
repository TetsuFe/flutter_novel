// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StoryTearOff {
  const _$StoryTearOff();

  _Story call(
      {@required int id,
      @required String title,
      @required String summary,
      @required String thumbnailImagePath,
      @required bool isRead}) {
    return _Story(
      id: id,
      title: title,
      summary: summary,
      thumbnailImagePath: thumbnailImagePath,
      isRead: isRead,
    );
  }
}

// ignore: unused_element
const $Story = _$StoryTearOff();

mixin _$Story {
  int get id;
  String get title;
  String get summary;
  String get thumbnailImagePath;
  bool get isRead;

  $StoryCopyWith<Story> get copyWith;
}

abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String summary,
      String thumbnailImagePath,
      bool isRead});
}

class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  final Story _value;
  // ignore: unused_field
  final $Res Function(Story) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object summary = freezed,
    Object thumbnailImagePath = freezed,
    Object isRead = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      thumbnailImagePath: thumbnailImagePath == freezed
          ? _value.thumbnailImagePath
          : thumbnailImagePath as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

abstract class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) then) =
      __$StoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String summary,
      String thumbnailImagePath,
      bool isRead});
}

class __$StoryCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$StoryCopyWith<$Res> {
  __$StoryCopyWithImpl(_Story _value, $Res Function(_Story) _then)
      : super(_value, (v) => _then(v as _Story));

  @override
  _Story get _value => super._value as _Story;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object summary = freezed,
    Object thumbnailImagePath = freezed,
    Object isRead = freezed,
  }) {
    return _then(_Story(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      thumbnailImagePath: thumbnailImagePath == freezed
          ? _value.thumbnailImagePath
          : thumbnailImagePath as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

class _$_Story implements _Story {
  _$_Story(
      {@required this.id,
      @required this.title,
      @required this.summary,
      @required this.thumbnailImagePath,
      @required this.isRead})
      : assert(id != null),
        assert(title != null),
        assert(summary != null),
        assert(thumbnailImagePath != null),
        assert(isRead != null);

  @override
  final int id;
  @override
  final String title;
  @override
  final String summary;
  @override
  final String thumbnailImagePath;
  @override
  final bool isRead;

  @override
  String toString() {
    return 'Story(id: $id, title: $title, summary: $summary, thumbnailImagePath: $thumbnailImagePath, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Story &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.thumbnailImagePath, thumbnailImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailImagePath, thumbnailImagePath)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(thumbnailImagePath) ^
      const DeepCollectionEquality().hash(isRead);

  @override
  _$StoryCopyWith<_Story> get copyWith =>
      __$StoryCopyWithImpl<_Story>(this, _$identity);
}

abstract class _Story implements Story {
  factory _Story(
      {@required int id,
      @required String title,
      @required String summary,
      @required String thumbnailImagePath,
      @required bool isRead}) = _$_Story;

  @override
  int get id;
  @override
  String get title;
  @override
  String get summary;
  @override
  String get thumbnailImagePath;
  @override
  bool get isRead;
  @override
  _$StoryCopyWith<_Story> get copyWith;
}
