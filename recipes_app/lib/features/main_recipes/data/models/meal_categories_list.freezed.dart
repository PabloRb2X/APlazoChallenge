// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_categories_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealCategoriesList {
  List<MealCategory> get categories;

  /// Create a copy of MealCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealCategoriesListCopyWith<MealCategoriesList> get copyWith =>
      _$MealCategoriesListCopyWithImpl<MealCategoriesList>(
          this as MealCategoriesList, _$identity);

  /// Serializes this MealCategoriesList to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealCategoriesList &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'MealCategoriesList(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $MealCategoriesListCopyWith<$Res> {
  factory $MealCategoriesListCopyWith(
          MealCategoriesList value, $Res Function(MealCategoriesList) _then) =
      _$MealCategoriesListCopyWithImpl;
  @useResult
  $Res call({List<MealCategory> categories});
}

/// @nodoc
class _$MealCategoriesListCopyWithImpl<$Res>
    implements $MealCategoriesListCopyWith<$Res> {
  _$MealCategoriesListCopyWithImpl(this._self, this._then);

  final MealCategoriesList _self;
  final $Res Function(MealCategoriesList) _then;

  /// Create a copy of MealCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MealCategory>,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealCategoriesList].
extension MealCategoriesListPatterns on MealCategoriesList {
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
    TResult Function(_MealCategoriesList value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealCategoriesList() when $default != null:
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
    TResult Function(_MealCategoriesList value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategoriesList():
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
    TResult? Function(_MealCategoriesList value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategoriesList() when $default != null:
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
    TResult Function(List<MealCategory> categories)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealCategoriesList() when $default != null:
        return $default(_that.categories);
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
    TResult Function(List<MealCategory> categories) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategoriesList():
        return $default(_that.categories);
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
    TResult? Function(List<MealCategory> categories)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategoriesList() when $default != null:
        return $default(_that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealCategoriesList implements MealCategoriesList {
  const _MealCategoriesList({required final List<MealCategory> categories})
      : _categories = categories;
  factory _MealCategoriesList.fromJson(Map<String, dynamic> json) =>
      _$MealCategoriesListFromJson(json);

  final List<MealCategory> _categories;
  @override
  List<MealCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of MealCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealCategoriesListCopyWith<_MealCategoriesList> get copyWith =>
      __$MealCategoriesListCopyWithImpl<_MealCategoriesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealCategoriesListToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealCategoriesList &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'MealCategoriesList(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$MealCategoriesListCopyWith<$Res>
    implements $MealCategoriesListCopyWith<$Res> {
  factory _$MealCategoriesListCopyWith(
          _MealCategoriesList value, $Res Function(_MealCategoriesList) _then) =
      __$MealCategoriesListCopyWithImpl;
  @override
  @useResult
  $Res call({List<MealCategory> categories});
}

/// @nodoc
class __$MealCategoriesListCopyWithImpl<$Res>
    implements _$MealCategoriesListCopyWith<$Res> {
  __$MealCategoriesListCopyWithImpl(this._self, this._then);

  final _MealCategoriesList _self;
  final $Res Function(_MealCategoriesList) _then;

  /// Create a copy of MealCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(_MealCategoriesList(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MealCategory>,
    ));
  }
}

/// @nodoc
mixin _$MealCategory {
  String get idCategory;
  String get strCategory;
  String get strCategoryThumb;
  String get strCategoryDescription;

  /// Create a copy of MealCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealCategoryCopyWith<MealCategory> get copyWith =>
      _$MealCategoryCopyWithImpl<MealCategory>(
          this as MealCategory, _$identity);

  /// Serializes this MealCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealCategory &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strCategoryThumb, strCategoryThumb) ||
                other.strCategoryThumb == strCategoryThumb) &&
            (identical(other.strCategoryDescription, strCategoryDescription) ||
                other.strCategoryDescription == strCategoryDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idCategory, strCategory,
      strCategoryThumb, strCategoryDescription);

  @override
  String toString() {
    return 'MealCategory(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }
}

/// @nodoc
abstract mixin class $MealCategoryCopyWith<$Res> {
  factory $MealCategoryCopyWith(
          MealCategory value, $Res Function(MealCategory) _then) =
      _$MealCategoryCopyWithImpl;
  @useResult
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class _$MealCategoryCopyWithImpl<$Res> implements $MealCategoryCopyWith<$Res> {
  _$MealCategoryCopyWithImpl(this._self, this._then);

  final MealCategory _self;
  final $Res Function(MealCategory) _then;

  /// Create a copy of MealCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = null,
    Object? strCategory = null,
    Object? strCategoryThumb = null,
    Object? strCategoryDescription = null,
  }) {
    return _then(_self.copyWith(
      idCategory: null == idCategory
          ? _self.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: null == strCategory
          ? _self.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: null == strCategoryThumb
          ? _self.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: null == strCategoryDescription
          ? _self.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealCategory].
extension MealCategoryPatterns on MealCategory {
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
    TResult Function(_MealCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealCategory() when $default != null:
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
    TResult Function(_MealCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategory():
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
    TResult? Function(_MealCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategory() when $default != null:
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
    TResult Function(String idCategory, String strCategory,
            String strCategoryThumb, String strCategoryDescription)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealCategory() when $default != null:
        return $default(_that.idCategory, _that.strCategory,
            _that.strCategoryThumb, _that.strCategoryDescription);
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
    TResult Function(String idCategory, String strCategory,
            String strCategoryThumb, String strCategoryDescription)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategory():
        return $default(_that.idCategory, _that.strCategory,
            _that.strCategoryThumb, _that.strCategoryDescription);
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
    TResult? Function(String idCategory, String strCategory,
            String strCategoryThumb, String strCategoryDescription)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealCategory() when $default != null:
        return $default(_that.idCategory, _that.strCategory,
            _that.strCategoryThumb, _that.strCategoryDescription);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealCategory implements MealCategory {
  const _MealCategory(
      {required this.idCategory,
      required this.strCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription});
  factory _MealCategory.fromJson(Map<String, dynamic> json) =>
      _$MealCategoryFromJson(json);

  @override
  final String idCategory;
  @override
  final String strCategory;
  @override
  final String strCategoryThumb;
  @override
  final String strCategoryDescription;

  /// Create a copy of MealCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealCategoryCopyWith<_MealCategory> get copyWith =>
      __$MealCategoryCopyWithImpl<_MealCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealCategory &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strCategoryThumb, strCategoryThumb) ||
                other.strCategoryThumb == strCategoryThumb) &&
            (identical(other.strCategoryDescription, strCategoryDescription) ||
                other.strCategoryDescription == strCategoryDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idCategory, strCategory,
      strCategoryThumb, strCategoryDescription);

  @override
  String toString() {
    return 'MealCategory(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }
}

/// @nodoc
abstract mixin class _$MealCategoryCopyWith<$Res>
    implements $MealCategoryCopyWith<$Res> {
  factory _$MealCategoryCopyWith(
          _MealCategory value, $Res Function(_MealCategory) _then) =
      __$MealCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class __$MealCategoryCopyWithImpl<$Res>
    implements _$MealCategoryCopyWith<$Res> {
  __$MealCategoryCopyWithImpl(this._self, this._then);

  final _MealCategory _self;
  final $Res Function(_MealCategory) _then;

  /// Create a copy of MealCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idCategory = null,
    Object? strCategory = null,
    Object? strCategoryThumb = null,
    Object? strCategoryDescription = null,
  }) {
    return _then(_MealCategory(
      idCategory: null == idCategory
          ? _self.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: null == strCategory
          ? _self.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: null == strCategoryThumb
          ? _self.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: null == strCategoryDescription
          ? _self.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
