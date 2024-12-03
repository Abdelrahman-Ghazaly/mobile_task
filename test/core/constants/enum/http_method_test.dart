import 'package:nana/core/constants/enum/enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HttpMethod Enum', () {
    // Verify all expected enum values exist
    test('enum values are correctly defined', () {
      expect(HttpMethod.values.length, 6);
    });

    // Verify the string representation of enum values
    test('enum values have correct names', () {
      expect(HttpMethod.delete.name, 'delete');
      expect(HttpMethod.get.name, 'get');
      expect(HttpMethod.head.name, 'head');
      expect(HttpMethod.patch.name, 'patch');
      expect(HttpMethod.post.name, 'post');
      expect(HttpMethod.put.name, 'put');
    });
  });
}
