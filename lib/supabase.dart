import 'articulos.dart';
import 'common.dart';

class SupaBaseHandler {
/*
  static String supaBaseUrl ="https://qpewttmefqniyqflyjmu.supabase.co";
  static String supaBaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFwZXd0dG1lZnFuaXlxZmx5am11Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzM2NjI1NDYsImV4cCI6MTk4OTIzODU0Nn0.OnRuoILFCh1WhCTjNx8JGRPaf_OzrBthdhL-H3dXhQk";
  final client = SupabaseClient(supaBaseUrl, supaBaseKey);*/
  Future<List<Articulos>> readData() async {
    final data = await cliente
        .from('loterias')
        .select('operador,urlimage,numero,nombre,hora');
    int count = data.length;
    List<Articulos> articulos = [];
    for (int i = 0; i < count; i++) {
      articulos.add(Articulos.fromMap(data[i]));
    }
    return articulos;
  }
}
