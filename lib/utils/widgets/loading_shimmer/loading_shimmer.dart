import 'package:chatui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../app_asset.dart';
import '../custom_image_view.dart';

part 'with_child.dart';
part 'tile.dart';
part 'logo.dart';

enum LoadingShimmerType { withChild, tile, logo }

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer._({
    super.key,
    required this.type,
    this.child,
    this.enabled,
    this.line,
  });
  final LoadingShimmerType type;
  final Widget? child;
  final bool? enabled;
  final int? line;

  factory LoadingShimmer.withChild({
    required Widget child,
    bool enabled = true,
  }) {
    return LoadingShimmer._(
      type: LoadingShimmerType.withChild,
      enabled: enabled,
      child: child,
    );
  }

  factory LoadingShimmer.tile({bool enabled = true, int line = 1}) {
    return LoadingShimmer._(
      type: LoadingShimmerType.tile,
      enabled: enabled,
      line: line,
    );
  }

  factory LoadingShimmer.logo({Key? key}) {
    return LoadingShimmer._(type: LoadingShimmerType.logo, key: key);
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LoadingShimmerType.withChild:
        return _WithChild(enabled: enabled!, child: child!);
      case LoadingShimmerType.logo:
        return const _Logo();
      case LoadingShimmerType.tile:
        return _Tile(enabled: enabled!, line: line!);
    }
  }
}
