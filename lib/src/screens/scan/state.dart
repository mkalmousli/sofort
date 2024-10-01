part of 'bloc.dart';

sealed class State {}

class ScanningState extends State {}

class ProcessingState extends State {
  final Barcode barcode;
  ProcessingState(this.barcode);
}

class GettingInfoState extends State {}

class SuccessState extends State {
  final grpc.Device device;
  SuccessState(this.device);
}

class ErrorState extends State {}
