part of '../chat_view.dart';

class _ChatHeader extends StatelessWidget {
  const _ChatHeader();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      buildWhen:
          (previous, current) =>
              previous.isChatFetching != current.isChatFetching,
      builder: (context, state) {
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
              child: CustomImageView(
                imagePath: AppAssets.headingLeftIcon,
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
                    child: LoadingShimmer.withChild(
                      enabled: state.chatData.groupImage.isEmpty,
                      child: CustomImageView(
                        imagePath:
                            state.chatData.groupImage.isEmpty
                                ? AppAssets.groupIcon
                                : state.chatData.groupImage,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        placeHolder: AppAssets.groupIcon,
                        width: 44,
                        height: 44,
                        radius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  8.wd,
                  Expanded(
                    child:
                        state.isChatFetching
                            ? LoadingShimmer.tile()
                            : Text(
                              state.chatData.groupName,
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge!.copyWith(
                                color: AppColor.black,
                                fontWeight: FontWeight.w700,
                                height: 1.10,
                              ),
                            ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CustomImageView(
                      imagePath: AppAssets.threeDotIcon,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  21.01.wd,
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
