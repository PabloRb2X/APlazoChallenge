// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealDetail {
  List<MealDetailData> get meals;

  /// Create a copy of MealDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealDetailCopyWith<MealDetail> get copyWith =>
      _$MealDetailCopyWithImpl<MealDetail>(this as MealDetail, _$identity);

  /// Serializes this MealDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealDetail &&
            const DeepCollectionEquality().equals(other.meals, meals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(meals));

  @override
  String toString() {
    return 'MealDetail(meals: $meals)';
  }
}

/// @nodoc
abstract mixin class $MealDetailCopyWith<$Res> {
  factory $MealDetailCopyWith(
          MealDetail value, $Res Function(MealDetail) _then) =
      _$MealDetailCopyWithImpl;
  @useResult
  $Res call({List<MealDetailData> meals});
}

/// @nodoc
class _$MealDetailCopyWithImpl<$Res> implements $MealDetailCopyWith<$Res> {
  _$MealDetailCopyWithImpl(this._self, this._then);

  final MealDetail _self;
  final $Res Function(MealDetail) _then;

  /// Create a copy of MealDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_self.copyWith(
      meals: null == meals
          ? _self.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealDetailData>,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealDetail].
extension MealDetailPatterns on MealDetail {
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
    TResult Function(_MealDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealDetail() when $default != null:
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
    TResult Function(_MealDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetail():
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
    TResult? Function(_MealDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetail() when $default != null:
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
    TResult Function(List<MealDetailData> meals)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealDetail() when $default != null:
        return $default(_that.meals);
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
    TResult Function(List<MealDetailData> meals) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetail():
        return $default(_that.meals);
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
    TResult? Function(List<MealDetailData> meals)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetail() when $default != null:
        return $default(_that.meals);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealDetail implements MealDetail {
  const _MealDetail({required final List<MealDetailData> meals})
      : _meals = meals;
  factory _MealDetail.fromJson(Map<String, dynamic> json) =>
      _$MealDetailFromJson(json);

  final List<MealDetailData> _meals;
  @override
  List<MealDetailData> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  /// Create a copy of MealDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealDetailCopyWith<_MealDetail> get copyWith =>
      __$MealDetailCopyWithImpl<_MealDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealDetail &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @override
  String toString() {
    return 'MealDetail(meals: $meals)';
  }
}

/// @nodoc
abstract mixin class _$MealDetailCopyWith<$Res>
    implements $MealDetailCopyWith<$Res> {
  factory _$MealDetailCopyWith(
          _MealDetail value, $Res Function(_MealDetail) _then) =
      __$MealDetailCopyWithImpl;
  @override
  @useResult
  $Res call({List<MealDetailData> meals});
}

/// @nodoc
class __$MealDetailCopyWithImpl<$Res> implements _$MealDetailCopyWith<$Res> {
  __$MealDetailCopyWithImpl(this._self, this._then);

  final _MealDetail _self;
  final $Res Function(_MealDetail) _then;

  /// Create a copy of MealDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? meals = null,
  }) {
    return _then(_MealDetail(
      meals: null == meals
          ? _self._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealDetailData>,
    ));
  }
}

/// @nodoc
mixin _$MealDetailData {
  String get idMeal;
  String get strMeal;
  String? get strMealAlternate;
  String get strCategory;
  String get strArea;
  String get strInstructions;
  String get strMealThumb;
  String? get strTags;
  String? get strYoutube;
  String? get strIngredient1;
  String? get strIngredient2;
  String? get strIngredient3;
  String? get strIngredient4;
  String? get strIngredient5;
  String? get strIngredient6;
  String? get strIngredient7;
  String? get strIngredient8;
  String? get strIngredient9;
  String? get strIngredient10;
  String? get strIngredient11;
  String? get strIngredient12;
  String? get strIngredient13;
  String? get strIngredient14;
  String? get strIngredient15;
  String? get strIngredient16;
  String? get strIngredient17;
  String? get strIngredient18;
  String? get strIngredient19;
  String? get strIngredient20;
  String? get strMeasure1;
  String? get strMeasure2;
  String? get strMeasure3;
  String? get strMeasure4;
  String? get strMeasure5;
  String? get strMeasure6;
  String? get strMeasure7;
  String? get strMeasure8;
  String? get strMeasure9;
  String? get strMeasure10;
  String? get strMeasure11;
  String? get strMeasure12;
  String? get strMeasure13;
  String? get strMeasure14;
  String? get strMeasure15;
  String? get strMeasure16;
  String? get strMeasure17;
  String? get strMeasure18;
  String? get strMeasure19;
  String? get strMeasure20;
  String? get strSource;
  String? get strImageSource;
  String? get strCreativeCommonsConfirmed;
  String? get dateModified;

  /// Create a copy of MealDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealDetailDataCopyWith<MealDetailData> get copyWith =>
      _$MealDetailDataCopyWithImpl<MealDetailData>(
          this as MealDetailData, _$identity);

  /// Serializes this MealDetailData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealDetailData &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealAlternate, strMealAlternate) ||
                other.strMealAlternate == strMealAlternate) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strArea, strArea) || other.strArea == strArea) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.strTags, strTags) || other.strTags == strTags) &&
            (identical(other.strYoutube, strYoutube) ||
                other.strYoutube == strYoutube) &&
            (identical(other.strIngredient1, strIngredient1) ||
                other.strIngredient1 == strIngredient1) &&
            (identical(other.strIngredient2, strIngredient2) ||
                other.strIngredient2 == strIngredient2) &&
            (identical(other.strIngredient3, strIngredient3) ||
                other.strIngredient3 == strIngredient3) &&
            (identical(other.strIngredient4, strIngredient4) ||
                other.strIngredient4 == strIngredient4) &&
            (identical(other.strIngredient5, strIngredient5) ||
                other.strIngredient5 == strIngredient5) &&
            (identical(other.strIngredient6, strIngredient6) ||
                other.strIngredient6 == strIngredient6) &&
            (identical(other.strIngredient7, strIngredient7) ||
                other.strIngredient7 == strIngredient7) &&
            (identical(other.strIngredient8, strIngredient8) ||
                other.strIngredient8 == strIngredient8) &&
            (identical(other.strIngredient9, strIngredient9) ||
                other.strIngredient9 == strIngredient9) &&
            (identical(other.strIngredient10, strIngredient10) ||
                other.strIngredient10 == strIngredient10) &&
            (identical(other.strIngredient11, strIngredient11) ||
                other.strIngredient11 == strIngredient11) &&
            (identical(other.strIngredient12, strIngredient12) ||
                other.strIngredient12 == strIngredient12) &&
            (identical(other.strIngredient13, strIngredient13) ||
                other.strIngredient13 == strIngredient13) &&
            (identical(other.strIngredient14, strIngredient14) ||
                other.strIngredient14 == strIngredient14) &&
            (identical(other.strIngredient15, strIngredient15) ||
                other.strIngredient15 == strIngredient15) &&
            (identical(other.strIngredient16, strIngredient16) ||
                other.strIngredient16 == strIngredient16) &&
            (identical(other.strIngredient17, strIngredient17) ||
                other.strIngredient17 == strIngredient17) &&
            (identical(other.strIngredient18, strIngredient18) ||
                other.strIngredient18 == strIngredient18) &&
            (identical(other.strIngredient19, strIngredient19) ||
                other.strIngredient19 == strIngredient19) &&
            (identical(other.strIngredient20, strIngredient20) ||
                other.strIngredient20 == strIngredient20) &&
            (identical(other.strMeasure1, strMeasure1) ||
                other.strMeasure1 == strMeasure1) &&
            (identical(other.strMeasure2, strMeasure2) ||
                other.strMeasure2 == strMeasure2) &&
            (identical(other.strMeasure3, strMeasure3) ||
                other.strMeasure3 == strMeasure3) &&
            (identical(other.strMeasure4, strMeasure4) ||
                other.strMeasure4 == strMeasure4) &&
            (identical(other.strMeasure5, strMeasure5) ||
                other.strMeasure5 == strMeasure5) &&
            (identical(other.strMeasure6, strMeasure6) ||
                other.strMeasure6 == strMeasure6) &&
            (identical(other.strMeasure7, strMeasure7) ||
                other.strMeasure7 == strMeasure7) &&
            (identical(other.strMeasure8, strMeasure8) ||
                other.strMeasure8 == strMeasure8) &&
            (identical(other.strMeasure9, strMeasure9) ||
                other.strMeasure9 == strMeasure9) &&
            (identical(other.strMeasure10, strMeasure10) ||
                other.strMeasure10 == strMeasure10) &&
            (identical(other.strMeasure11, strMeasure11) ||
                other.strMeasure11 == strMeasure11) &&
            (identical(other.strMeasure12, strMeasure12) ||
                other.strMeasure12 == strMeasure12) &&
            (identical(other.strMeasure13, strMeasure13) ||
                other.strMeasure13 == strMeasure13) &&
            (identical(other.strMeasure14, strMeasure14) ||
                other.strMeasure14 == strMeasure14) &&
            (identical(other.strMeasure15, strMeasure15) ||
                other.strMeasure15 == strMeasure15) &&
            (identical(other.strMeasure16, strMeasure16) ||
                other.strMeasure16 == strMeasure16) &&
            (identical(other.strMeasure17, strMeasure17) ||
                other.strMeasure17 == strMeasure17) &&
            (identical(other.strMeasure18, strMeasure18) ||
                other.strMeasure18 == strMeasure18) &&
            (identical(other.strMeasure19, strMeasure19) || other.strMeasure19 == strMeasure19) &&
            (identical(other.strMeasure20, strMeasure20) || other.strMeasure20 == strMeasure20) &&
            (identical(other.strSource, strSource) || other.strSource == strSource) &&
            (identical(other.strImageSource, strImageSource) || other.strImageSource == strImageSource) &&
            (identical(other.strCreativeCommonsConfirmed, strCreativeCommonsConfirmed) || other.strCreativeCommonsConfirmed == strCreativeCommonsConfirmed) &&
            (identical(other.dateModified, dateModified) || other.dateModified == dateModified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idMeal,
        strMeal,
        strMealAlternate,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        strIngredient16,
        strIngredient17,
        strIngredient18,
        strIngredient19,
        strIngredient20,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
        strMeasure16,
        strMeasure17,
        strMeasure18,
        strMeasure19,
        strMeasure20,
        strSource,
        strImageSource,
        strCreativeCommonsConfirmed,
        dateModified
      ]);

  @override
  String toString() {
    return 'MealDetailData(idMeal: $idMeal, strMeal: $strMeal, strMealAlternate: $strMealAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strIngredient16: $strIngredient16, strIngredient17: $strIngredient17, strIngredient18: $strIngredient18, strIngredient19: $strIngredient19, strIngredient20: $strIngredient20, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strMeasure16: $strMeasure16, strMeasure17: $strMeasure17, strMeasure18: $strMeasure18, strMeasure19: $strMeasure19, strMeasure20: $strMeasure20, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
  }
}

/// @nodoc
abstract mixin class $MealDetailDataCopyWith<$Res> {
  factory $MealDetailDataCopyWith(
          MealDetailData value, $Res Function(MealDetailData) _then) =
      _$MealDetailDataCopyWithImpl;
  @useResult
  $Res call(
      {String idMeal,
      String strMeal,
      String? strMealAlternate,
      String strCategory,
      String strArea,
      String strInstructions,
      String strMealThumb,
      String? strTags,
      String? strYoutube,
      String? strIngredient1,
      String? strIngredient2,
      String? strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      String? strMeasure1,
      String? strMeasure2,
      String? strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource,
      String? strImageSource,
      String? strCreativeCommonsConfirmed,
      String? dateModified});
}

/// @nodoc
class _$MealDetailDataCopyWithImpl<$Res>
    implements $MealDetailDataCopyWith<$Res> {
  _$MealDetailDataCopyWithImpl(this._self, this._then);

  final MealDetailData _self;
  final $Res Function(MealDetailData) _then;

  /// Create a copy of MealDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
    Object? strMeal = null,
    Object? strMealAlternate = freezed,
    Object? strCategory = null,
    Object? strArea = null,
    Object? strInstructions = null,
    Object? strMealThumb = null,
    Object? strTags = freezed,
    Object? strYoutube = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strIngredient5 = freezed,
    Object? strIngredient6 = freezed,
    Object? strIngredient7 = freezed,
    Object? strIngredient8 = freezed,
    Object? strIngredient9 = freezed,
    Object? strIngredient10 = freezed,
    Object? strIngredient11 = freezed,
    Object? strIngredient12 = freezed,
    Object? strIngredient13 = freezed,
    Object? strIngredient14 = freezed,
    Object? strIngredient15 = freezed,
    Object? strIngredient16 = freezed,
    Object? strIngredient17 = freezed,
    Object? strIngredient18 = freezed,
    Object? strIngredient19 = freezed,
    Object? strIngredient20 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strMeasure4 = freezed,
    Object? strMeasure5 = freezed,
    Object? strMeasure6 = freezed,
    Object? strMeasure7 = freezed,
    Object? strMeasure8 = freezed,
    Object? strMeasure9 = freezed,
    Object? strMeasure10 = freezed,
    Object? strMeasure11 = freezed,
    Object? strMeasure12 = freezed,
    Object? strMeasure13 = freezed,
    Object? strMeasure14 = freezed,
    Object? strMeasure15 = freezed,
    Object? strMeasure16 = freezed,
    Object? strMeasure17 = freezed,
    Object? strMeasure18 = freezed,
    Object? strMeasure19 = freezed,
    Object? strMeasure20 = freezed,
    Object? strSource = freezed,
    Object? strImageSource = freezed,
    Object? strCreativeCommonsConfirmed = freezed,
    Object? dateModified = freezed,
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
      strMealAlternate: freezed == strMealAlternate
          ? _self.strMealAlternate
          : strMealAlternate // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: null == strCategory
          ? _self.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strArea: null == strArea
          ? _self.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String,
      strInstructions: null == strInstructions
          ? _self.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _self.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strTags: freezed == strTags
          ? _self.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: freezed == strYoutube
          ? _self.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient1: freezed == strIngredient1
          ? _self.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient2: freezed == strIngredient2
          ? _self.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient3: freezed == strIngredient3
          ? _self.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient4: freezed == strIngredient4
          ? _self.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient5: freezed == strIngredient5
          ? _self.strIngredient5
          : strIngredient5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient6: freezed == strIngredient6
          ? _self.strIngredient6
          : strIngredient6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient7: freezed == strIngredient7
          ? _self.strIngredient7
          : strIngredient7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient8: freezed == strIngredient8
          ? _self.strIngredient8
          : strIngredient8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient9: freezed == strIngredient9
          ? _self.strIngredient9
          : strIngredient9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient10: freezed == strIngredient10
          ? _self.strIngredient10
          : strIngredient10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient11: freezed == strIngredient11
          ? _self.strIngredient11
          : strIngredient11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient12: freezed == strIngredient12
          ? _self.strIngredient12
          : strIngredient12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient13: freezed == strIngredient13
          ? _self.strIngredient13
          : strIngredient13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient14: freezed == strIngredient14
          ? _self.strIngredient14
          : strIngredient14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient15: freezed == strIngredient15
          ? _self.strIngredient15
          : strIngredient15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient16: freezed == strIngredient16
          ? _self.strIngredient16
          : strIngredient16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient17: freezed == strIngredient17
          ? _self.strIngredient17
          : strIngredient17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient18: freezed == strIngredient18
          ? _self.strIngredient18
          : strIngredient18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient19: freezed == strIngredient19
          ? _self.strIngredient19
          : strIngredient19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient20: freezed == strIngredient20
          ? _self.strIngredient20
          : strIngredient20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure1: freezed == strMeasure1
          ? _self.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure2: freezed == strMeasure2
          ? _self.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure3: freezed == strMeasure3
          ? _self.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure4: freezed == strMeasure4
          ? _self.strMeasure4
          : strMeasure4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure5: freezed == strMeasure5
          ? _self.strMeasure5
          : strMeasure5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure6: freezed == strMeasure6
          ? _self.strMeasure6
          : strMeasure6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure7: freezed == strMeasure7
          ? _self.strMeasure7
          : strMeasure7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure8: freezed == strMeasure8
          ? _self.strMeasure8
          : strMeasure8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure9: freezed == strMeasure9
          ? _self.strMeasure9
          : strMeasure9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure10: freezed == strMeasure10
          ? _self.strMeasure10
          : strMeasure10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure11: freezed == strMeasure11
          ? _self.strMeasure11
          : strMeasure11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure12: freezed == strMeasure12
          ? _self.strMeasure12
          : strMeasure12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure13: freezed == strMeasure13
          ? _self.strMeasure13
          : strMeasure13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure14: freezed == strMeasure14
          ? _self.strMeasure14
          : strMeasure14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure15: freezed == strMeasure15
          ? _self.strMeasure15
          : strMeasure15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure16: freezed == strMeasure16
          ? _self.strMeasure16
          : strMeasure16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure17: freezed == strMeasure17
          ? _self.strMeasure17
          : strMeasure17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure18: freezed == strMeasure18
          ? _self.strMeasure18
          : strMeasure18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure19: freezed == strMeasure19
          ? _self.strMeasure19
          : strMeasure19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure20: freezed == strMeasure20
          ? _self.strMeasure20
          : strMeasure20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strSource: freezed == strSource
          ? _self.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageSource: freezed == strImageSource
          ? _self.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strCreativeCommonsConfirmed: freezed == strCreativeCommonsConfirmed
          ? _self.strCreativeCommonsConfirmed
          : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _self.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealDetailData].
extension MealDetailDataPatterns on MealDetailData {
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
    TResult Function(_MealDetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealDetailData() when $default != null:
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
    TResult Function(_MealDetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetailData():
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
    TResult? Function(_MealDetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetailData() when $default != null:
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
    TResult Function(
            String idMeal,
            String strMeal,
            String? strMealAlternate,
            String strCategory,
            String strArea,
            String strInstructions,
            String strMealThumb,
            String? strTags,
            String? strYoutube,
            String? strIngredient1,
            String? strIngredient2,
            String? strIngredient3,
            String? strIngredient4,
            String? strIngredient5,
            String? strIngredient6,
            String? strIngredient7,
            String? strIngredient8,
            String? strIngredient9,
            String? strIngredient10,
            String? strIngredient11,
            String? strIngredient12,
            String? strIngredient13,
            String? strIngredient14,
            String? strIngredient15,
            String? strIngredient16,
            String? strIngredient17,
            String? strIngredient18,
            String? strIngredient19,
            String? strIngredient20,
            String? strMeasure1,
            String? strMeasure2,
            String? strMeasure3,
            String? strMeasure4,
            String? strMeasure5,
            String? strMeasure6,
            String? strMeasure7,
            String? strMeasure8,
            String? strMeasure9,
            String? strMeasure10,
            String? strMeasure11,
            String? strMeasure12,
            String? strMeasure13,
            String? strMeasure14,
            String? strMeasure15,
            String? strMeasure16,
            String? strMeasure17,
            String? strMeasure18,
            String? strMeasure19,
            String? strMeasure20,
            String? strSource,
            String? strImageSource,
            String? strCreativeCommonsConfirmed,
            String? dateModified)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealDetailData() when $default != null:
        return $default(
            _that.idMeal,
            _that.strMeal,
            _that.strMealAlternate,
            _that.strCategory,
            _that.strArea,
            _that.strInstructions,
            _that.strMealThumb,
            _that.strTags,
            _that.strYoutube,
            _that.strIngredient1,
            _that.strIngredient2,
            _that.strIngredient3,
            _that.strIngredient4,
            _that.strIngredient5,
            _that.strIngredient6,
            _that.strIngredient7,
            _that.strIngredient8,
            _that.strIngredient9,
            _that.strIngredient10,
            _that.strIngredient11,
            _that.strIngredient12,
            _that.strIngredient13,
            _that.strIngredient14,
            _that.strIngredient15,
            _that.strIngredient16,
            _that.strIngredient17,
            _that.strIngredient18,
            _that.strIngredient19,
            _that.strIngredient20,
            _that.strMeasure1,
            _that.strMeasure2,
            _that.strMeasure3,
            _that.strMeasure4,
            _that.strMeasure5,
            _that.strMeasure6,
            _that.strMeasure7,
            _that.strMeasure8,
            _that.strMeasure9,
            _that.strMeasure10,
            _that.strMeasure11,
            _that.strMeasure12,
            _that.strMeasure13,
            _that.strMeasure14,
            _that.strMeasure15,
            _that.strMeasure16,
            _that.strMeasure17,
            _that.strMeasure18,
            _that.strMeasure19,
            _that.strMeasure20,
            _that.strSource,
            _that.strImageSource,
            _that.strCreativeCommonsConfirmed,
            _that.dateModified);
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
    TResult Function(
            String idMeal,
            String strMeal,
            String? strMealAlternate,
            String strCategory,
            String strArea,
            String strInstructions,
            String strMealThumb,
            String? strTags,
            String? strYoutube,
            String? strIngredient1,
            String? strIngredient2,
            String? strIngredient3,
            String? strIngredient4,
            String? strIngredient5,
            String? strIngredient6,
            String? strIngredient7,
            String? strIngredient8,
            String? strIngredient9,
            String? strIngredient10,
            String? strIngredient11,
            String? strIngredient12,
            String? strIngredient13,
            String? strIngredient14,
            String? strIngredient15,
            String? strIngredient16,
            String? strIngredient17,
            String? strIngredient18,
            String? strIngredient19,
            String? strIngredient20,
            String? strMeasure1,
            String? strMeasure2,
            String? strMeasure3,
            String? strMeasure4,
            String? strMeasure5,
            String? strMeasure6,
            String? strMeasure7,
            String? strMeasure8,
            String? strMeasure9,
            String? strMeasure10,
            String? strMeasure11,
            String? strMeasure12,
            String? strMeasure13,
            String? strMeasure14,
            String? strMeasure15,
            String? strMeasure16,
            String? strMeasure17,
            String? strMeasure18,
            String? strMeasure19,
            String? strMeasure20,
            String? strSource,
            String? strImageSource,
            String? strCreativeCommonsConfirmed,
            String? dateModified)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetailData():
        return $default(
            _that.idMeal,
            _that.strMeal,
            _that.strMealAlternate,
            _that.strCategory,
            _that.strArea,
            _that.strInstructions,
            _that.strMealThumb,
            _that.strTags,
            _that.strYoutube,
            _that.strIngredient1,
            _that.strIngredient2,
            _that.strIngredient3,
            _that.strIngredient4,
            _that.strIngredient5,
            _that.strIngredient6,
            _that.strIngredient7,
            _that.strIngredient8,
            _that.strIngredient9,
            _that.strIngredient10,
            _that.strIngredient11,
            _that.strIngredient12,
            _that.strIngredient13,
            _that.strIngredient14,
            _that.strIngredient15,
            _that.strIngredient16,
            _that.strIngredient17,
            _that.strIngredient18,
            _that.strIngredient19,
            _that.strIngredient20,
            _that.strMeasure1,
            _that.strMeasure2,
            _that.strMeasure3,
            _that.strMeasure4,
            _that.strMeasure5,
            _that.strMeasure6,
            _that.strMeasure7,
            _that.strMeasure8,
            _that.strMeasure9,
            _that.strMeasure10,
            _that.strMeasure11,
            _that.strMeasure12,
            _that.strMeasure13,
            _that.strMeasure14,
            _that.strMeasure15,
            _that.strMeasure16,
            _that.strMeasure17,
            _that.strMeasure18,
            _that.strMeasure19,
            _that.strMeasure20,
            _that.strSource,
            _that.strImageSource,
            _that.strCreativeCommonsConfirmed,
            _that.dateModified);
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
    TResult? Function(
            String idMeal,
            String strMeal,
            String? strMealAlternate,
            String strCategory,
            String strArea,
            String strInstructions,
            String strMealThumb,
            String? strTags,
            String? strYoutube,
            String? strIngredient1,
            String? strIngredient2,
            String? strIngredient3,
            String? strIngredient4,
            String? strIngredient5,
            String? strIngredient6,
            String? strIngredient7,
            String? strIngredient8,
            String? strIngredient9,
            String? strIngredient10,
            String? strIngredient11,
            String? strIngredient12,
            String? strIngredient13,
            String? strIngredient14,
            String? strIngredient15,
            String? strIngredient16,
            String? strIngredient17,
            String? strIngredient18,
            String? strIngredient19,
            String? strIngredient20,
            String? strMeasure1,
            String? strMeasure2,
            String? strMeasure3,
            String? strMeasure4,
            String? strMeasure5,
            String? strMeasure6,
            String? strMeasure7,
            String? strMeasure8,
            String? strMeasure9,
            String? strMeasure10,
            String? strMeasure11,
            String? strMeasure12,
            String? strMeasure13,
            String? strMeasure14,
            String? strMeasure15,
            String? strMeasure16,
            String? strMeasure17,
            String? strMeasure18,
            String? strMeasure19,
            String? strMeasure20,
            String? strSource,
            String? strImageSource,
            String? strCreativeCommonsConfirmed,
            String? dateModified)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealDetailData() when $default != null:
        return $default(
            _that.idMeal,
            _that.strMeal,
            _that.strMealAlternate,
            _that.strCategory,
            _that.strArea,
            _that.strInstructions,
            _that.strMealThumb,
            _that.strTags,
            _that.strYoutube,
            _that.strIngredient1,
            _that.strIngredient2,
            _that.strIngredient3,
            _that.strIngredient4,
            _that.strIngredient5,
            _that.strIngredient6,
            _that.strIngredient7,
            _that.strIngredient8,
            _that.strIngredient9,
            _that.strIngredient10,
            _that.strIngredient11,
            _that.strIngredient12,
            _that.strIngredient13,
            _that.strIngredient14,
            _that.strIngredient15,
            _that.strIngredient16,
            _that.strIngredient17,
            _that.strIngredient18,
            _that.strIngredient19,
            _that.strIngredient20,
            _that.strMeasure1,
            _that.strMeasure2,
            _that.strMeasure3,
            _that.strMeasure4,
            _that.strMeasure5,
            _that.strMeasure6,
            _that.strMeasure7,
            _that.strMeasure8,
            _that.strMeasure9,
            _that.strMeasure10,
            _that.strMeasure11,
            _that.strMeasure12,
            _that.strMeasure13,
            _that.strMeasure14,
            _that.strMeasure15,
            _that.strMeasure16,
            _that.strMeasure17,
            _that.strMeasure18,
            _that.strMeasure19,
            _that.strMeasure20,
            _that.strSource,
            _that.strImageSource,
            _that.strCreativeCommonsConfirmed,
            _that.dateModified);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealDetailData implements MealDetailData {
  const _MealDetailData(
      {required this.idMeal,
      required this.strMeal,
      this.strMealAlternate,
      required this.strCategory,
      required this.strArea,
      required this.strInstructions,
      required this.strMealThumb,
      this.strTags,
      this.strYoutube,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20,
      this.strSource,
      this.strImageSource,
      this.strCreativeCommonsConfirmed,
      this.dateModified});
  factory _MealDetailData.fromJson(Map<String, dynamic> json) =>
      _$MealDetailDataFromJson(json);

  @override
  final String idMeal;
  @override
  final String strMeal;
  @override
  final String? strMealAlternate;
  @override
  final String strCategory;
  @override
  final String strArea;
  @override
  final String strInstructions;
  @override
  final String strMealThumb;
  @override
  final String? strTags;
  @override
  final String? strYoutube;
  @override
  final String? strIngredient1;
  @override
  final String? strIngredient2;
  @override
  final String? strIngredient3;
  @override
  final String? strIngredient4;
  @override
  final String? strIngredient5;
  @override
  final String? strIngredient6;
  @override
  final String? strIngredient7;
  @override
  final String? strIngredient8;
  @override
  final String? strIngredient9;
  @override
  final String? strIngredient10;
  @override
  final String? strIngredient11;
  @override
  final String? strIngredient12;
  @override
  final String? strIngredient13;
  @override
  final String? strIngredient14;
  @override
  final String? strIngredient15;
  @override
  final String? strIngredient16;
  @override
  final String? strIngredient17;
  @override
  final String? strIngredient18;
  @override
  final String? strIngredient19;
  @override
  final String? strIngredient20;
  @override
  final String? strMeasure1;
  @override
  final String? strMeasure2;
  @override
  final String? strMeasure3;
  @override
  final String? strMeasure4;
  @override
  final String? strMeasure5;
  @override
  final String? strMeasure6;
  @override
  final String? strMeasure7;
  @override
  final String? strMeasure8;
  @override
  final String? strMeasure9;
  @override
  final String? strMeasure10;
  @override
  final String? strMeasure11;
  @override
  final String? strMeasure12;
  @override
  final String? strMeasure13;
  @override
  final String? strMeasure14;
  @override
  final String? strMeasure15;
  @override
  final String? strMeasure16;
  @override
  final String? strMeasure17;
  @override
  final String? strMeasure18;
  @override
  final String? strMeasure19;
  @override
  final String? strMeasure20;
  @override
  final String? strSource;
  @override
  final String? strImageSource;
  @override
  final String? strCreativeCommonsConfirmed;
  @override
  final String? dateModified;

  /// Create a copy of MealDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealDetailDataCopyWith<_MealDetailData> get copyWith =>
      __$MealDetailDataCopyWithImpl<_MealDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealDetailDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealDetailData &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealAlternate, strMealAlternate) ||
                other.strMealAlternate == strMealAlternate) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strArea, strArea) || other.strArea == strArea) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.strTags, strTags) || other.strTags == strTags) &&
            (identical(other.strYoutube, strYoutube) ||
                other.strYoutube == strYoutube) &&
            (identical(other.strIngredient1, strIngredient1) ||
                other.strIngredient1 == strIngredient1) &&
            (identical(other.strIngredient2, strIngredient2) ||
                other.strIngredient2 == strIngredient2) &&
            (identical(other.strIngredient3, strIngredient3) ||
                other.strIngredient3 == strIngredient3) &&
            (identical(other.strIngredient4, strIngredient4) ||
                other.strIngredient4 == strIngredient4) &&
            (identical(other.strIngredient5, strIngredient5) ||
                other.strIngredient5 == strIngredient5) &&
            (identical(other.strIngredient6, strIngredient6) ||
                other.strIngredient6 == strIngredient6) &&
            (identical(other.strIngredient7, strIngredient7) ||
                other.strIngredient7 == strIngredient7) &&
            (identical(other.strIngredient8, strIngredient8) ||
                other.strIngredient8 == strIngredient8) &&
            (identical(other.strIngredient9, strIngredient9) ||
                other.strIngredient9 == strIngredient9) &&
            (identical(other.strIngredient10, strIngredient10) ||
                other.strIngredient10 == strIngredient10) &&
            (identical(other.strIngredient11, strIngredient11) ||
                other.strIngredient11 == strIngredient11) &&
            (identical(other.strIngredient12, strIngredient12) ||
                other.strIngredient12 == strIngredient12) &&
            (identical(other.strIngredient13, strIngredient13) ||
                other.strIngredient13 == strIngredient13) &&
            (identical(other.strIngredient14, strIngredient14) ||
                other.strIngredient14 == strIngredient14) &&
            (identical(other.strIngredient15, strIngredient15) ||
                other.strIngredient15 == strIngredient15) &&
            (identical(other.strIngredient16, strIngredient16) ||
                other.strIngredient16 == strIngredient16) &&
            (identical(other.strIngredient17, strIngredient17) ||
                other.strIngredient17 == strIngredient17) &&
            (identical(other.strIngredient18, strIngredient18) ||
                other.strIngredient18 == strIngredient18) &&
            (identical(other.strIngredient19, strIngredient19) ||
                other.strIngredient19 == strIngredient19) &&
            (identical(other.strIngredient20, strIngredient20) ||
                other.strIngredient20 == strIngredient20) &&
            (identical(other.strMeasure1, strMeasure1) ||
                other.strMeasure1 == strMeasure1) &&
            (identical(other.strMeasure2, strMeasure2) ||
                other.strMeasure2 == strMeasure2) &&
            (identical(other.strMeasure3, strMeasure3) ||
                other.strMeasure3 == strMeasure3) &&
            (identical(other.strMeasure4, strMeasure4) ||
                other.strMeasure4 == strMeasure4) &&
            (identical(other.strMeasure5, strMeasure5) ||
                other.strMeasure5 == strMeasure5) &&
            (identical(other.strMeasure6, strMeasure6) ||
                other.strMeasure6 == strMeasure6) &&
            (identical(other.strMeasure7, strMeasure7) ||
                other.strMeasure7 == strMeasure7) &&
            (identical(other.strMeasure8, strMeasure8) ||
                other.strMeasure8 == strMeasure8) &&
            (identical(other.strMeasure9, strMeasure9) ||
                other.strMeasure9 == strMeasure9) &&
            (identical(other.strMeasure10, strMeasure10) ||
                other.strMeasure10 == strMeasure10) &&
            (identical(other.strMeasure11, strMeasure11) ||
                other.strMeasure11 == strMeasure11) &&
            (identical(other.strMeasure12, strMeasure12) ||
                other.strMeasure12 == strMeasure12) &&
            (identical(other.strMeasure13, strMeasure13) ||
                other.strMeasure13 == strMeasure13) &&
            (identical(other.strMeasure14, strMeasure14) ||
                other.strMeasure14 == strMeasure14) &&
            (identical(other.strMeasure15, strMeasure15) ||
                other.strMeasure15 == strMeasure15) &&
            (identical(other.strMeasure16, strMeasure16) ||
                other.strMeasure16 == strMeasure16) &&
            (identical(other.strMeasure17, strMeasure17) ||
                other.strMeasure17 == strMeasure17) &&
            (identical(other.strMeasure18, strMeasure18) ||
                other.strMeasure18 == strMeasure18) &&
            (identical(other.strMeasure19, strMeasure19) || other.strMeasure19 == strMeasure19) &&
            (identical(other.strMeasure20, strMeasure20) || other.strMeasure20 == strMeasure20) &&
            (identical(other.strSource, strSource) || other.strSource == strSource) &&
            (identical(other.strImageSource, strImageSource) || other.strImageSource == strImageSource) &&
            (identical(other.strCreativeCommonsConfirmed, strCreativeCommonsConfirmed) || other.strCreativeCommonsConfirmed == strCreativeCommonsConfirmed) &&
            (identical(other.dateModified, dateModified) || other.dateModified == dateModified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idMeal,
        strMeal,
        strMealAlternate,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        strIngredient16,
        strIngredient17,
        strIngredient18,
        strIngredient19,
        strIngredient20,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
        strMeasure16,
        strMeasure17,
        strMeasure18,
        strMeasure19,
        strMeasure20,
        strSource,
        strImageSource,
        strCreativeCommonsConfirmed,
        dateModified
      ]);

  @override
  String toString() {
    return 'MealDetailData(idMeal: $idMeal, strMeal: $strMeal, strMealAlternate: $strMealAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strIngredient16: $strIngredient16, strIngredient17: $strIngredient17, strIngredient18: $strIngredient18, strIngredient19: $strIngredient19, strIngredient20: $strIngredient20, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strMeasure16: $strMeasure16, strMeasure17: $strMeasure17, strMeasure18: $strMeasure18, strMeasure19: $strMeasure19, strMeasure20: $strMeasure20, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
  }
}

/// @nodoc
abstract mixin class _$MealDetailDataCopyWith<$Res>
    implements $MealDetailDataCopyWith<$Res> {
  factory _$MealDetailDataCopyWith(
          _MealDetailData value, $Res Function(_MealDetailData) _then) =
      __$MealDetailDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String idMeal,
      String strMeal,
      String? strMealAlternate,
      String strCategory,
      String strArea,
      String strInstructions,
      String strMealThumb,
      String? strTags,
      String? strYoutube,
      String? strIngredient1,
      String? strIngredient2,
      String? strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      String? strMeasure1,
      String? strMeasure2,
      String? strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource,
      String? strImageSource,
      String? strCreativeCommonsConfirmed,
      String? dateModified});
}

/// @nodoc
class __$MealDetailDataCopyWithImpl<$Res>
    implements _$MealDetailDataCopyWith<$Res> {
  __$MealDetailDataCopyWithImpl(this._self, this._then);

  final _MealDetailData _self;
  final $Res Function(_MealDetailData) _then;

  /// Create a copy of MealDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idMeal = null,
    Object? strMeal = null,
    Object? strMealAlternate = freezed,
    Object? strCategory = null,
    Object? strArea = null,
    Object? strInstructions = null,
    Object? strMealThumb = null,
    Object? strTags = freezed,
    Object? strYoutube = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strIngredient5 = freezed,
    Object? strIngredient6 = freezed,
    Object? strIngredient7 = freezed,
    Object? strIngredient8 = freezed,
    Object? strIngredient9 = freezed,
    Object? strIngredient10 = freezed,
    Object? strIngredient11 = freezed,
    Object? strIngredient12 = freezed,
    Object? strIngredient13 = freezed,
    Object? strIngredient14 = freezed,
    Object? strIngredient15 = freezed,
    Object? strIngredient16 = freezed,
    Object? strIngredient17 = freezed,
    Object? strIngredient18 = freezed,
    Object? strIngredient19 = freezed,
    Object? strIngredient20 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strMeasure4 = freezed,
    Object? strMeasure5 = freezed,
    Object? strMeasure6 = freezed,
    Object? strMeasure7 = freezed,
    Object? strMeasure8 = freezed,
    Object? strMeasure9 = freezed,
    Object? strMeasure10 = freezed,
    Object? strMeasure11 = freezed,
    Object? strMeasure12 = freezed,
    Object? strMeasure13 = freezed,
    Object? strMeasure14 = freezed,
    Object? strMeasure15 = freezed,
    Object? strMeasure16 = freezed,
    Object? strMeasure17 = freezed,
    Object? strMeasure18 = freezed,
    Object? strMeasure19 = freezed,
    Object? strMeasure20 = freezed,
    Object? strSource = freezed,
    Object? strImageSource = freezed,
    Object? strCreativeCommonsConfirmed = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_MealDetailData(
      idMeal: null == idMeal
          ? _self.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _self.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealAlternate: freezed == strMealAlternate
          ? _self.strMealAlternate
          : strMealAlternate // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: null == strCategory
          ? _self.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strArea: null == strArea
          ? _self.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String,
      strInstructions: null == strInstructions
          ? _self.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _self.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strTags: freezed == strTags
          ? _self.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: freezed == strYoutube
          ? _self.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient1: freezed == strIngredient1
          ? _self.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient2: freezed == strIngredient2
          ? _self.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient3: freezed == strIngredient3
          ? _self.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient4: freezed == strIngredient4
          ? _self.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient5: freezed == strIngredient5
          ? _self.strIngredient5
          : strIngredient5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient6: freezed == strIngredient6
          ? _self.strIngredient6
          : strIngredient6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient7: freezed == strIngredient7
          ? _self.strIngredient7
          : strIngredient7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient8: freezed == strIngredient8
          ? _self.strIngredient8
          : strIngredient8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient9: freezed == strIngredient9
          ? _self.strIngredient9
          : strIngredient9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient10: freezed == strIngredient10
          ? _self.strIngredient10
          : strIngredient10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient11: freezed == strIngredient11
          ? _self.strIngredient11
          : strIngredient11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient12: freezed == strIngredient12
          ? _self.strIngredient12
          : strIngredient12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient13: freezed == strIngredient13
          ? _self.strIngredient13
          : strIngredient13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient14: freezed == strIngredient14
          ? _self.strIngredient14
          : strIngredient14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient15: freezed == strIngredient15
          ? _self.strIngredient15
          : strIngredient15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient16: freezed == strIngredient16
          ? _self.strIngredient16
          : strIngredient16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient17: freezed == strIngredient17
          ? _self.strIngredient17
          : strIngredient17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient18: freezed == strIngredient18
          ? _self.strIngredient18
          : strIngredient18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient19: freezed == strIngredient19
          ? _self.strIngredient19
          : strIngredient19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient20: freezed == strIngredient20
          ? _self.strIngredient20
          : strIngredient20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure1: freezed == strMeasure1
          ? _self.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure2: freezed == strMeasure2
          ? _self.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure3: freezed == strMeasure3
          ? _self.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure4: freezed == strMeasure4
          ? _self.strMeasure4
          : strMeasure4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure5: freezed == strMeasure5
          ? _self.strMeasure5
          : strMeasure5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure6: freezed == strMeasure6
          ? _self.strMeasure6
          : strMeasure6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure7: freezed == strMeasure7
          ? _self.strMeasure7
          : strMeasure7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure8: freezed == strMeasure8
          ? _self.strMeasure8
          : strMeasure8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure9: freezed == strMeasure9
          ? _self.strMeasure9
          : strMeasure9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure10: freezed == strMeasure10
          ? _self.strMeasure10
          : strMeasure10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure11: freezed == strMeasure11
          ? _self.strMeasure11
          : strMeasure11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure12: freezed == strMeasure12
          ? _self.strMeasure12
          : strMeasure12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure13: freezed == strMeasure13
          ? _self.strMeasure13
          : strMeasure13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure14: freezed == strMeasure14
          ? _self.strMeasure14
          : strMeasure14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure15: freezed == strMeasure15
          ? _self.strMeasure15
          : strMeasure15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure16: freezed == strMeasure16
          ? _self.strMeasure16
          : strMeasure16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure17: freezed == strMeasure17
          ? _self.strMeasure17
          : strMeasure17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure18: freezed == strMeasure18
          ? _self.strMeasure18
          : strMeasure18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure19: freezed == strMeasure19
          ? _self.strMeasure19
          : strMeasure19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure20: freezed == strMeasure20
          ? _self.strMeasure20
          : strMeasure20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strSource: freezed == strSource
          ? _self.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageSource: freezed == strImageSource
          ? _self.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strCreativeCommonsConfirmed: freezed == strCreativeCommonsConfirmed
          ? _self.strCreativeCommonsConfirmed
          : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _self.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
