import 'dart:async';

class DeBouncer {
  DeBouncer({Duration? delay})
      : _delay = delay ?? const Duration(seconds: 1);

  final Duration _delay;
  Timer? _timer;

  void call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(_delay, callback);
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
