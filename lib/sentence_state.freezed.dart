// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sentence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SentenceStateTearOff {
  const _$SentenceStateTearOff();

  _SentenceState call(
      {@required List<Sentence> sentenceList, @required int sentenceIndex}) {
    return _SentenceState(
      sentenceList: sentenceList,
      sentenceIndex: sentenceIndex,
    );
  }
}

// ignore: unused_element
const $SentenceState = _$SentenceStateTearOff();

mixin _$SentenceState {
  List<Sentence> get sentenceList;
  int get sentenceIndex;

  $SentenceStateCopyWith<SentenceState> get copyWith;
}

abstract class $SentenceStateCopyWith<$Res> {
  factory $SentenceStateCopyWith(
          SentenceState value, $Res Function(SentenceState) then) =
      _$SentenceStateCopyWithImpl<$Res>;
  $Res call({List<Sentence> sentenceList, int sentenceIndex});
}

class _$SentenceStateCopyWithImpl<$Res>
    implements $SentenceStateCopyWith<$Res> {
  _$SentenceStateCopyWithImpl(this._value, this._then);

  final SentenceState _value;
  // ignore: unused_field
  final $Res Function(SentenceState) _then;

  @override
  $Res call({
    Object sentenceList = freezed,
    Object sentenceIndex = freezed,
  }) {
    return _then(_value.copyWith(
      sentenceList: sentenceList == freezed
          ? _value.sentenceList
          : sentenceList as List<Sentence>,
      sentenceIndex: sentenceIndex == freezed
          ? _value.sentenceIndex
          : sentenceIndex as int,
    ));
  }
}

abstract class _$SentenceStateCopyWith<$Res>
    implements $SentenceStateCopyWith<$Res> {
  factory _$SentenceStateCopyWith(
          _SentenceState value, $Res Function(_SentenceState) then) =
      __$SentenceStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Sentence> sentenceList, int sentenceIndex});
}

class __$SentenceStateCopyWithImpl<$Res>
    extends _$SentenceStateCopyWithImpl<$Res>
    implements _$SentenceStateCopyWith<$Res> {
  __$SentenceStateCopyWithImpl(
      _SentenceState _value, $Res Function(_SentenceState) _then)
      : super(_value, (v) => _then(v as _SentenceState));

  @override
  _SentenceState get _value => super._value as _SentenceState;

  @override
  $Res call({
    Object sentenceList = freezed,
    Object sentenceIndex = freezed,
  }) {
    return _then(_SentenceState(
      sentenceList: sentenceList == freezed
          ? _value.sentenceList
          : sentenceList as List<Sentence>,
      sentenceIndex: sentenceIndex == freezed
          ? _value.sentenceIndex
          : sentenceIndex as int,
    ));
  }
}

class _$_SentenceState implements _SentenceState {
  _$_SentenceState({@required this.sentenceList, @required this.sentenceIndex})
      : assert(sentenceList != null),
        assert(sentenceIndex != null);

  @override
  final List<Sentence> sentenceList;
  @override
  final int sentenceIndex;

  bool _didsentenceListLength = false;
  int _sentenceListLength;

  @override
  int get sentenceListLength {
    if (_didsentenceListLength == false) {
      _didsentenceListLength = true;
      _sentenceListLength = sentenceList.length;
    }
    return _sentenceListLength;
  }

  bool _didisLastSentence = false;
  bool _isLastSentence;

  @override
  bool get isLastSentence {
    if (_didisLastSentence == false) {
      _didisLastSentence = true;
      _isLastSentence = sentenceIndex == sentenceList.length - 1;
    }
    return _isLastSentence;
  }

  bool _didcurrentSentence = false;
  String _currentSentence;

  @override
  String get currentSentence {
    if (_didcurrentSentence == false) {
      _didcurrentSentence = true;
      _currentSentence = sentenceList[sentenceIndex].body;
    }
    return _currentSentence;
  }

  @override
  String toString() {
    return 'SentenceState(sentenceList: $sentenceList, sentenceIndex: $sentenceIndex, sentenceListLength: $sentenceListLength, isLastSentence: $isLastSentence, currentSentence: $currentSentence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SentenceState &&
            (identical(other.sentenceList, sentenceList) ||
                const DeepCollectionEquality()
                    .equals(other.sentenceList, sentenceList)) &&
            (identical(other.sentenceIndex, sentenceIndex) ||
                const DeepCollectionEquality()
                    .equals(other.sentenceIndex, sentenceIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sentenceList) ^
      const DeepCollectionEquality().hash(sentenceIndex);

  @override
  _$SentenceStateCopyWith<_SentenceState> get copyWith =>
      __$SentenceStateCopyWithImpl<_SentenceState>(this, _$identity);
}

abstract class _SentenceState implements SentenceState {
  factory _SentenceState(
      {@required List<Sentence> sentenceList,
      @required int sentenceIndex}) = _$_SentenceState;

  @override
  List<Sentence> get sentenceList;
  @override
  int get sentenceIndex;
  @override
  _$SentenceStateCopyWith<_SentenceState> get copyWith;
}
