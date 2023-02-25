import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/presentaion/ui/note_stream.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // URLとanon keyの設定をする
  await Supabase.initialize(
    url: 'https://auqwnxqfryeunkgmiieh.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1cXdueHFmcnlldW5rZ21paWVoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzcyODUzNTEsImV4cCI6MTk5Mjg2MTM1MX0.ZGN-G3BwrHwQ93XKxyG3MFm_04h6oLQjfrJ0MEfi_5s',
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // テーマを使ってAppBar全体にスタイルを適用する.
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black54,
        foregroundColor: Colors.grey,
        centerTitle: true, // AndroidでAppbarのタイトルを中央寄せにする.
      )),
      home: const NotesStream(),
    );
  }
}
