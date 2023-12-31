// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:widgetbook_generator/builder.dart' as _i2;
import 'package:source_gen/builder.dart' as _i3;
import 'package:injectable_generator/builder.dart' as _i4;
import 'dart:isolate' as _i5;
import 'package:build_runner/build_runner.dart' as _i6;
import 'dart:io' as _i7;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'widgetbook_generator:use_case_builder',
    [_i2.useCaseBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:app_builder',
    [_i2.appBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'source_gen:combining_builder',
    [_i3.combiningBuilder],
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.apply(
    r'injectable_generator:injectable_builder',
    [_i4.injectableBuilder],
    _i1.toDependentsOf(r'injectable_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'injectable_generator:injectable_config_builder',
    [_i4.injectableConfigBuilder],
    _i1.toDependentsOf(r'injectable_generator'),
    hideOutput: false,
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
    _i3.partCleanup,
  ),
];
void main(
  List<String> args, [
  _i5.SendPort? sendPort,
]) async {
  var result = await _i6.run(
    args,
    _builders,
  );
  sendPort?.send(result);
  _i7.exitCode = result;
}
