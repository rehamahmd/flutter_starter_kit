enum LogLevelEnum {
  debug('DEBUG', '\x1B[1m\x1B[34mDEBUG\x1B[0m', '\x1B[34m', '\x1B[0m'),
  info('INFO', '\x1B[1m\x1B[35mINFO\x1B[0m', '\x1B[35m', '\x1B[0m'),
  warning('WARNING', '\x1B[1m\x1B[33mWARNING\x1B[0m', '\x1B[33m', '\x1B[0m'),
  error('ERROR', '\x1B[1m\x1B[31mERROR\x1B[0m', '\x1B[31m', '\x1B[0m');

  final String name;
  final String color;
  final String colorStart;
  final String colorEnd;
  const LogLevelEnum(this.name, this.color, this.colorStart, this.colorEnd);
}
