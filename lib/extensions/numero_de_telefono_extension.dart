import 'package:numeros_whats_app/models/numero_de_telefono.dart';
import 'package:url_launcher/url_launcher.dart';

extension NumeroDeTelefonoExtension on NumeroDeTelefono {
    void abrirEnWhatsApp({String mensajeInicial = ''}) {
    final mensajeCodificado = Uri.encodeComponent(mensajeInicial);
    // Ejemplo de mandar whats app con una mensaje de texto predefinido
    final url = Uri.parse('https://wa.me/$numeroDeTelefonoPlano?text=hola');
    launchUrl(url);
  }

  void abrirTelefono() {
    final url = Uri.parse('tel:$numeroDeTelefonoPlano');
    launchUrl(url);
  }
}
