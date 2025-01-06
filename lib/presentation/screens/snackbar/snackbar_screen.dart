import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'In eiusmod sunt ut ut ullamco eu id. Et eiusmod nisi ex qui ea est irure eiusmod consectetur incididunt. Duis do occaecat consequat commodo voluptate consectetur ea ex do aliqua ipsum do sit. Ex enim aute occaecat deserunt enim nostrud elit do. Voluptate aute velit ea do occaecat Lorem excepteur sint sit mollit sit sint velit labore. In excepteur commodo magna pariatur laborum ad in consequat aliqua. Velit amet magna nisi esse amet voluptate amet.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars y Diálogos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                  onPressed: () {
                    showAboutDialog(context: context, children: [
                      const Text(
                          'Non consectetur exercitation in consequat labore exercitation duis amet nisi minim.')
                    ]);
                  },
                  child: const Text('Licencias usadas')),
              FilledButton.tonal(
                  onPressed: () => openDialog(context),
                  child: const Text('Mostrar diálogo'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context),
        ));
  }
}
