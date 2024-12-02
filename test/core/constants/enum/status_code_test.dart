import 'package:flutter_test/flutter_test.dart';
import 'package:nana/core/constants/enum/enum.dart';

void main() {
  group('StatusCode Class', () {
    test('HTTP status codes are correctly defined', () {
      // Verify specific status code values
      expect(StatusCode.ok, 200);
      expect(StatusCode.badRequest, 400);
      expect(StatusCode.unauthorized, 401);
      expect(StatusCode.forbidden, 403);
      expect(StatusCode.notFound, 404);
      expect(StatusCode.conflict, 409);
      expect(StatusCode.unprocessableEntity, 422);
      expect(StatusCode.internalServer, 500);
    });

    test('All status codes are unique', () {
      // Create a set to check for unique values
      final statusCodes = {
        StatusCode.ok,
        StatusCode.badRequest,
        StatusCode.unauthorized,
        StatusCode.forbidden,
        StatusCode.notFound,
        StatusCode.conflict,
        StatusCode.unprocessableEntity,
        StatusCode.internalServer,
      };

      // Verify that the set has the same length as the number of status codes
      expect(statusCodes.length, 8, reason: 'All status codes should be unique');
    });

    test('Status code categories are correct', () {
      // Successful responses
      expect(StatusCode.ok, inInclusiveRange(200, 299));

      // Client error responses
      expect(StatusCode.badRequest, inInclusiveRange(400, 499));
      expect(StatusCode.unauthorized, inInclusiveRange(400, 499));
      expect(StatusCode.forbidden, inInclusiveRange(400, 499));
      expect(StatusCode.notFound, inInclusiveRange(400, 499));
      expect(StatusCode.conflict, inInclusiveRange(400, 499));
      expect(StatusCode.unprocessableEntity, inInclusiveRange(400, 499));

      // Server error responses
      expect(StatusCode.internalServer, inInclusiveRange(500, 599));
    });

    test('Status codes follow standard HTTP status code conventions', () {
      // Specific checks for known HTTP status code meanings
      expect(StatusCode.ok, 200, reason: 'OK - successful request');
      expect(StatusCode.badRequest, 400, reason: 'Bad Request - invalid syntax');
      expect(StatusCode.unauthorized, 401, reason: 'Unauthorized - authentication required');
      expect(StatusCode.forbidden, 403, reason: 'Forbidden - server understands but refuses');
      expect(StatusCode.notFound, 404, reason: 'Not Found - resource does not exist');
      expect(StatusCode.conflict, 409, reason: 'Conflict - request conflicts with server state');
      expect(StatusCode.unprocessableEntity, 422, reason: 'Unprocessable Entity - semantic errors');
      expect(StatusCode.internalServer, 500, reason: 'Internal Server Error - unexpected condition');
    });
  });
}
