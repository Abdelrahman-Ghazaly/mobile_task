// Mocks generated by Mockito 5.4.4 from annotations
// in nana/test/core/utils/errors/server_exceptions_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/src/dio_exception.dart' as _i3;
import 'package:dio/src/headers.dart' as _i4;
import 'package:dio/src/options.dart' as _i2;
import 'package:dio/src/redirect_record.dart' as _i6;
import 'package:dio/src/response.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRequestOptions_0 extends _i1.SmartFake
    implements _i2.RequestOptions {
  _FakeRequestOptions_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStackTrace_1 extends _i1.SmartFake implements StackTrace {
  _FakeStackTrace_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDioException_2 extends _i1.SmartFake implements _i3.DioException {
  _FakeDioException_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHeaders_3 extends _i1.SmartFake implements _i4.Headers {
  _FakeHeaders_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUri_4 extends _i1.SmartFake implements Uri {
  _FakeUri_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DioException].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioException extends _i1.Mock implements _i3.DioException {
  @override
  _i2.RequestOptions get requestOptions => (super.noSuchMethod(
        Invocation.getter(#requestOptions),
        returnValue: _FakeRequestOptions_0(
          this,
          Invocation.getter(#requestOptions),
        ),
        returnValueForMissingStub: _FakeRequestOptions_0(
          this,
          Invocation.getter(#requestOptions),
        ),
      ) as _i2.RequestOptions);

  @override
  _i3.DioExceptionType get type => (super.noSuchMethod(
        Invocation.getter(#type),
        returnValue: _i3.DioExceptionType.connectionTimeout,
        returnValueForMissingStub: _i3.DioExceptionType.connectionTimeout,
      ) as _i3.DioExceptionType);

  @override
  StackTrace get stackTrace => (super.noSuchMethod(
        Invocation.getter(#stackTrace),
        returnValue: _FakeStackTrace_1(
          this,
          Invocation.getter(#stackTrace),
        ),
        returnValueForMissingStub: _FakeStackTrace_1(
          this,
          Invocation.getter(#stackTrace),
        ),
      ) as StackTrace);

  @override
  _i3.DioException copyWith({
    _i2.RequestOptions? requestOptions,
    _i5.Response<dynamic>? response,
    _i3.DioExceptionType? type,
    Object? error,
    StackTrace? stackTrace,
    String? message,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #copyWith,
          [],
          {
            #requestOptions: requestOptions,
            #response: response,
            #type: type,
            #error: error,
            #stackTrace: stackTrace,
            #message: message,
          },
        ),
        returnValue: _FakeDioException_2(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #requestOptions: requestOptions,
              #response: response,
              #type: type,
              #error: error,
              #stackTrace: stackTrace,
              #message: message,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDioException_2(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #requestOptions: requestOptions,
              #response: response,
              #type: type,
              #error: error,
              #stackTrace: stackTrace,
              #message: message,
            },
          ),
        ),
      ) as _i3.DioException);
}

/// A class which mocks [Response].
///
/// See the documentation for Mockito's code generation for more information.
class MockResponse<T> extends _i1.Mock implements _i5.Response<T> {
  @override
  set data(T? _data) => super.noSuchMethod(
        Invocation.setter(
          #data,
          _data,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.RequestOptions get requestOptions => (super.noSuchMethod(
        Invocation.getter(#requestOptions),
        returnValue: _FakeRequestOptions_0(
          this,
          Invocation.getter(#requestOptions),
        ),
        returnValueForMissingStub: _FakeRequestOptions_0(
          this,
          Invocation.getter(#requestOptions),
        ),
      ) as _i2.RequestOptions);

  @override
  set requestOptions(_i2.RequestOptions? _requestOptions) => super.noSuchMethod(
        Invocation.setter(
          #requestOptions,
          _requestOptions,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set statusCode(int? _statusCode) => super.noSuchMethod(
        Invocation.setter(
          #statusCode,
          _statusCode,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set statusMessage(String? _statusMessage) => super.noSuchMethod(
        Invocation.setter(
          #statusMessage,
          _statusMessage,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Headers get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: _FakeHeaders_3(
          this,
          Invocation.getter(#headers),
        ),
        returnValueForMissingStub: _FakeHeaders_3(
          this,
          Invocation.getter(#headers),
        ),
      ) as _i4.Headers);

  @override
  set headers(_i4.Headers? _headers) => super.noSuchMethod(
        Invocation.setter(
          #headers,
          _headers,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get isRedirect => (super.noSuchMethod(
        Invocation.getter(#isRedirect),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set isRedirect(bool? _isRedirect) => super.noSuchMethod(
        Invocation.setter(
          #isRedirect,
          _isRedirect,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i6.RedirectRecord> get redirects => (super.noSuchMethod(
        Invocation.getter(#redirects),
        returnValue: <_i6.RedirectRecord>[],
        returnValueForMissingStub: <_i6.RedirectRecord>[],
      ) as List<_i6.RedirectRecord>);

  @override
  set redirects(List<_i6.RedirectRecord>? _redirects) => super.noSuchMethod(
        Invocation.setter(
          #redirects,
          _redirects,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, dynamic> get extra => (super.noSuchMethod(
        Invocation.getter(#extra),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  set extra(Map<String, dynamic>? _extra) => super.noSuchMethod(
        Invocation.setter(
          #extra,
          _extra,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Uri get realUri => (super.noSuchMethod(
        Invocation.getter(#realUri),
        returnValue: _FakeUri_4(
          this,
          Invocation.getter(#realUri),
        ),
        returnValueForMissingStub: _FakeUri_4(
          this,
          Invocation.getter(#realUri),
        ),
      ) as Uri);
}