part of '../chat_view.dart';

class _ChatListView extends StatelessWidget {
  const _ChatListView();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      buildWhen:
          (previous, current) =>
              previous.isChatFetching != current.isChatFetching,
      builder: (context, state) {
        return state.isChatFetching
            ? Center(child: LoadingShimmer.logo())
            : ListView.separated(
              itemCount: state.chatData.items.length,
              itemBuilder: (context, index) {
                final prevItem =
                    index == 0
                        ? null
                        : state.chatData.items.elementAt(index - 1);
                final item = state.chatData.items.elementAt(index);
                final senders = Set<String>.from(state.senders);
                senders.remove('self');
                final senderList = senders.toList();
                final showCurrentDate =
                    prevItem == null || prevItem.date != item.date;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showCurrentDate) ...[
                      Center(
                        child: Stack(
                          children: [
                            Text(
                              item.date,
                              textAlign: TextAlign.center,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(
                                foreground:
                                    Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 2
                                      ..color = AppColor.tealSecondary,
                              ),
                            ),
                            Text(
                              item.date,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(color: AppColor.black),
                            ),
                          ],
                        ),
                      ),
                      16.hs,
                    ],
                    item.senderName == 'self'
                        ? _ChatSelfItem(entity: item)
                        : _ChatItem(
                          entity: item,
                          index:
                              senderList.contains(item.senderName)
                                  ? senderList.indexOf(item.senderName)
                                  : 0,
                        ),
                    if (index == state.chatData.items.length - 1) 16.hs,
                  ],
                );
              },
              separatorBuilder: (context, index) => 16.hs,
            );
      },
    );
  }
}
