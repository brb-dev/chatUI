part of '../chat_view.dart';

class _ChatSelfItem extends StatelessWidget {
  final ChatItemEntity entity;
  const _ChatSelfItem({required this.entity});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.68533333,
            padding: EdgeInsets.only(
              left: 20,
              right: 12,
              bottom: 16.39,
              top: 12.93,
            ),
            decoration: BoxDecoration(
              color: AppColor.yellowPrimary,
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
                topLeft: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),
            ),
            child: Opacity(
              opacity: 0.9,
              child: Text(
                entity.message,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.left,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 12,
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
