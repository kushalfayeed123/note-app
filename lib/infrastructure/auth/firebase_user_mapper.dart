import 'package:dddtodoapp/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/auth/user.dart';

extension FirebaseUserDomainX on User {
  CurrentUser toDomain() {
    return CurrentUser(id: UniqueId.fromUniqueString(uid));
  }
}
