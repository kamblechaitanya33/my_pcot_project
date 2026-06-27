import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_html/html.dart' as html;

class ExportHelper {
  /*
   * Required Packages
   *
   * flutter pub add path_provider
   * flutter pub add open_filex
   * flutter pub add universal_html
   */

  ExportHelper._();

  /// Generic Export Method
  static Future<void> exportFile({
    required List<int> bytes,
    required String fileName,
    bool openAfterDownload = true,
  }) async {
    try {
      if (kIsWeb) {
        final blob = html.Blob([bytes]);

        final url = html.Url.createObjectUrl(blob);

        final anchor = html.AnchorElement(href: url)
          ..download = fileName
          ..style.display = 'none';

        html.document.body?.append(anchor);

        anchor.click();
        anchor.remove();

        html.Url.revokeObjectUrl(url);

        debugPrint('$fileName downloaded successfully');
      } else {
        final directory = await getApplicationDocumentsDirectory();

        final file = File('${directory.path}/$fileName');

        await file.writeAsBytes(bytes, flush: true);

        debugPrint('Saved: ${file.path}');

        if (openAfterDownload) {
          await OpenFilex.open(file.path);
        }
      }
    } catch (e, stackTrace) {
      debugPrint('Export Error: $e');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  /// Excel
  static Future<void> exportExcel({
    required List<int> bytes,
    String fileName = 'Report.xlsx',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// PDF
  static Future<void> exportPdf({
    required List<int> bytes,
    String fileName = 'Report.pdf',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// Word
  static Future<void> exportWord({
    required List<int> bytes,
    String fileName = 'Report.docx',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// CSV
  static Future<void> exportCsv({
    required List<int> bytes,
    String fileName = 'Report.csv',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// Text
  static Future<void> exportText({
    required List<int> bytes,
    String fileName = 'Report.txt',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// JSON
  static Future<void> exportJson({
    required List<int> bytes,
    String fileName = 'Report.json',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// ZIP
  static Future<void> exportZip({
    required List<int> bytes,
    String fileName = 'Report.zip',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }

  /// Image
  static Future<void> exportImage({
    required List<int> bytes,
    String fileName = 'Image.png',
  }) async {
    await exportFile(bytes: bytes, fileName: fileName);
  }
}
