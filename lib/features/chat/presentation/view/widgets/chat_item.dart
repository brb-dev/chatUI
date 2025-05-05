part of '../chat_view.dart';

class _ChatItem extends StatelessWidget {
  final ChatItemEntity entity;
  final int index;
  const _ChatItem({required this.entity, required this.index});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.68533333,
          padding: EdgeInsets.only(left: 12, right: 20, bottom: 12.54, top: 4),
          decoration: BoxDecoration(
            color: AppColor.primarySecondary,
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 4,
                offset: Offset(-2, 2),
                spreadRadius: 0,
              ),
            ],
            border: Border.all(color: AppColor.tealSecondary),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _ItemHeader(item: entity, index: index),
              Opacity(
                opacity: 0.9,
                child: Text(
                  entity.message,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 2,
          right: 27,
          child: Text(
            entity.time,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}

class _ItemHeader extends StatelessWidget {
  const _ItemHeader({required this.item, required this.index});
  final ChatItemEntity item;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColor.tealSecondary),
          ),
          child: LoadingShimmer.withChild(
            enabled: item.senderImage.isEmpty,
            child: CustomImageView(
              imagePath: item.senderImage,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              radius: BorderRadius.circular(12),
              placeHolder: AppAssets.profileIcon,
              width: 24,
              height: 24,
            ),
          ),
        ),
        4.wd,
        Text(
          item.senderName,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: getColor(item.senderName, index),
          ),
        ),
      ],
    );
  }

  Color getColor(String text, int index) {
    final hash = text.codeUnits.fold(0, (prev, curr) => prev + curr);
    return colors[(hash + index) % colors.length];
  }
}

final colors = [
  AppColor.palleteOne,
  AppColor.palleteTwo,
  AppColor.palleteThree,
];
