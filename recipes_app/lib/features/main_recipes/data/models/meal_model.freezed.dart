// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealModel {
  String get idMeal;
  String get strMeal;
  String get strMealThumb;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealModelCopyWith<MealModel> get copyWith =>
      _$MealModelCopyWithImpl<MealModel>(this as MealModel, _$identity);

  /// Serializes this MealModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealModel &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idMeal, strMeal, strMealThumb);

  @override
  String toString() {
    return 'MealModel(idMeal: $idMeal, strMeal: $strMeal, strMealThumb: $strMealThumb)';
  }
}

/// @nodoc
abstract mixin class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) _then) =
      _$MealModelCopyWithImpl;
  @useResult
  $Res call({String idMeal, String strMeal, String strMealThumb});
}

/// @nodoc
class _$MealModelCopyWithImpl<$Res> implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._self, this._then);

  final MealModel _self;
  final $Res Function(MealModel) _then;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
    Object? strMeal = null,
    Object? strMealThumb = null,
  }) {
    return _then(_self.copyWith(
      idMeal: null == idMeal
          ? _self.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _self.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _self.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealModel].
extension MealModelPatterns on MealModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MealModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MealModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MealModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String idMeal, String strMeal, String strMealThumb)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealModel() when $default != null:
        return $default(_that.idMeal, _that.strMeal, _that.strMealThumb);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String idMeal, String strMeal, String strMealThumb)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealModel():
        return $default(_that.idMeal, _that.strMeal, _that.strMealThumb);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String idMeal, String strMeal, String strMealThumb)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealModel() when $default != null:
        return $default(_that.idMeal, _that.strMeal, _that.strMealThumb);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealModel implements MealModel {
  const _MealModel(
      {required this.idMeal,
      required this.strMeal,
      required this.strMealThumb});
  factory _MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);

  @override
  final String idMeal;
  @override
  final String strMeal;
  @override
  final String strMealThumb;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealModelCopyWith<_MealModel> get copyWith =>
      __$MealModelCopyWithImpl<_MealModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealModel &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idMeal, strMeal, strMealThumb);

  @override
  String toString() {
    return 'MealModel(idMeal: $idMeal, strMeal: $strMeal, strMealThumb: $strMealThumb)';
  }
}

/// @nodoc
abstract mixin class _$MealModelCopyWith<$Res>
    implements $MealModelCopyWith<$Res> {
  factory _$MealModelCopyWith(
          _MealModel value, $Res Function(_MealModel) _then) =
      __$MealModelCopyWithImpl;
  @override
  @useResult
  $Res call({String idMeal, String strMeal, String strMealThumb});
}

/// @nodoc
class __$MealModelCopyWithImpl<$Res> implements _$MealModelCopyWith<$Res> {
  __$MealModelCopyWithImpl(this._self, this._then);

  final _MealModel _self;
  final $Res Function(_MealModel) _then;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idMeal = null,
    Object? strMeal = null,
    Object? strMealThumb = null,
  }) {
    return _then(_MealModel(
      idMeal: null == idMeal
          ? _self.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _self.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _self.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
