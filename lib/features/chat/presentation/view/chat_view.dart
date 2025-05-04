import 'package:auto_route/auto_route.dart';
import 'package:chatui/core/theme/app_color.dart';
import 'package:chatui/features/chat/domain/entities/chat_entity.dart';
import 'package:chatui/features/chat/domain/entities/chat_item_entity.dart';
import 'package:chatui/utils/app_asset.dart';
import 'package:chatui/utils/extension/extension_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/error/error_util.dart';
import '../bloc/chat_bloc.dart';

part 'widgets/chat_header.dart';
part 'widgets/chat_item.dart';
part 'widgets/chat_self_item.dart';
part 'widgets/chat_text_field.dart';

@RoutePage()
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      extendBodyBehindAppBar: true,
      body: BlocConsumer<ChatBloc, ChatState>(
        listenWhen:
            (previous, current) =>
                previous.chatFailureOrSuccessOption !=
                current.chatFailureOrSuccessOption,
        listener: (context, state) {
          state.chatFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
              ErrorUtils.handleApiFailure(context, failure);
            }, (success) {}),
          );
        },
        buildWhen:
            (previous, current) =>
                previous.isChatFetching != current.isChatFetching,
        builder: (context, state) {
          return Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.7,
                  child: SvgPicture.asset(
                    AppAssets.backgroundIcon,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  (MediaQuery.sizeOf(context).height * 0.05418719).hs,
                  _ChatHeader(chatEntity: state.chatData),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: ListView.separated(
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
                                                ..color =
                                                    AppColor.tealSecondary,
                                        ),
                                      ),
                                      Text(
                                        item.date,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
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
                                            ? senderList.indexOf(
                                              item.senderName,
                                            )
                                            : 0,
                                  ),
                              if (index == state.chatData.items.length - 1)
                                16.hs,
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => 16.hs,
                      ),
                    ),
                  ),

                  _ChatTextField(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
