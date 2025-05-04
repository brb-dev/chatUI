part of 'loading_shimmer.dart';

class _Tile extends StatelessWidget {
  const _Tile({required this.enabled, required this.line});
  final int line;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: AppColor.black,
        highlightColor: Theme.of(context).canvasColor,
        enabled: enabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.filled(
            line,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                width: 120,
                height: 8.0,
                color: Theme.of(context).canvasColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
