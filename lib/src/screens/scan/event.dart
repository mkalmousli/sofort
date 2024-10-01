part of 'bloc.dart';

sealed class Event {}

class ProcessBarcodeEvent extends Event {
  final Barcode barcode;
  ProcessBarcodeEvent(this.barcode);
}
