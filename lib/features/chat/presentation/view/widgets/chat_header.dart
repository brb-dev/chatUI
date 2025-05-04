part of '../chat_view.dart';

class _ChatHeader extends StatelessWidget {
  final ChatEntity chatEntity;
  const _ChatHeader({required this.chatEntity});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: 0,
                  blue: 0,
                  green: 0,
                  red: 0.10,
                ),
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: SvgPicture.asset(
            AppAssets.headingLeftIcon,
            fit: BoxFit.cover,
            height: 48,
          ),
        ),
        13.5.wd,
        Container(
          height: 48,
          width: MediaQuery.sizeOf(context).width * 0.73066667,
          decoration: BoxDecoration(
            color: AppColor.yellowPrimary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            border: Border.all(color: AppColor.tealSecondary),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: 0,
                  blue: 0,
                  green: 0,
                  red: 0.10,
                ),
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            children: [
              13.wd,
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.tealSecondary),
                  image: DecorationImage(
                    image: NetworkImage(chatEntity.groupImage),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(
                        alpha: 0,
                        blue: 0,
                        green: 0,
                        red: 0.10,
                      ),
                      offset: Offset(0, 3),
                      blurRadius: 1,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
              8.wd,
              Expanded(
                child: Text(
                  chatEntity.groupName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColor.black,
                    fontWeight: FontWeight.w700,
                    height: 1.10,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AppAssets.threeDotIcon,
                  fit: BoxFit.fitHeight,
                ),
              ),
              21.01.wd,
            ],
          ),
        ),
      ],
    );
  }
}
