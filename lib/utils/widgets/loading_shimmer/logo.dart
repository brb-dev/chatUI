part of 'loading_shimmer.dart';

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Shimmer.fromColors(
          baseColor: AppColor.tealSecondary,
          highlightColor: Theme.of(context).canvasColor,
          enabled: true,
          child: CustomImageView(
            imagePath: AppAssets.groupIcon,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(15),
          ),
        ),
        Positioned.fill(
          child: Text('Loading', style: Theme.of(context).textTheme.labelSmall),
        ),
      ],
    );
  }
}
