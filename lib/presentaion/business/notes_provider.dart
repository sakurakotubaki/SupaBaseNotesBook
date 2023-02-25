import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Supabaseをインスタンス化するプロバイダー.
final notesProvider = StateProvider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});
// Supabaseからリアルタイムにデータを取得するプロバイダー.
final notesStreamProvider = StreamProvider<List<Map<String, dynamic>>>((ref) {
  return Supabase.instance.client.from('notes').stream(primaryKey: ['id']);
});

// TextEditingControllerを使うためのProvider
final bodyProvider = StateProvider.autoDispose((ref) {
  // riverpodで使うには、('')が必要
  return TextEditingController(text: '');
});
