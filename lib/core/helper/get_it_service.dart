import 'package:pharmacy_app/feature/auth/data/repos/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // SupabaseClient
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  // AuthRepository With Supabase
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(getIt<SupabaseClient>()),
  );
}
