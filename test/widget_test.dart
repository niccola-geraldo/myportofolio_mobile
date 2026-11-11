import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';
import 'package:myportofolio_mobile/menu.dart';

void main() {
  testWidgets('Menu menampilkan identitas dan ketiga tombol aksi', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('MyPortfolio'), findsOneWidget);
    expect(find.text('2506619070'), findsOneWidget);
    expect(find.text('Niccola Geraldo Winaryo Durand'), findsOneWidget);
    expect(find.text('PBP F'), findsOneWidget);
    expect(find.byType(InfoCard), findsNWidgets(3));
    expect(find.byType(ItemCard), findsNWidgets(3));
    expect(find.text('Selamat datang di MyPortfolio Mobile!'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsNothing);
  });

  for (final name in ['Lihat Proyek', 'Tambah Proyek', 'Logout']) {
    testWidgets('Tombol $name menampilkan SnackBar yang sesuai', (
      tester,
    ) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text(name));
      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.text('Kamu telah menekan tombol $name!'), findsOneWidget);
    });
  }

  testWidgets('Menu dapat ditampilkan pada layar ponsel yang pendek', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());
    expect(tester.takeException(), isNull);

    await tester.ensureVisible(find.text('Logout'));
    await tester.tap(find.text('Logout'));
    await tester.pumpAndSettle();

    expect(find.text('Kamu telah menekan tombol Logout!'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
