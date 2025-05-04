import 'package:auto_route/auto_route.dart';
import 'package:chatui/core/theme/app_color.dart';
import 'package:chatui/features/chat/domain/entities/chat_entity.dart';
import 'package:chatui/features/chat/domain/entities/chat_item_entity.dart';
import 'package:chatui/utils/app_asset.dart';
import 'package:chatui/utils/extension/extension_util.dart';
import 'package:chatui/utils/widgets/custom_image_view.dart';
import 'package:chatui/utils/widgets/loading_shimmer/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/error/error_util.dart';
import '../bloc/chat_bloc.dart';

part 'widgets/chat_header.dart';
part 'widgets/chat_item.dart';
part 'widgets/chat_self_item.dart';
part 'widgets/chat_text_field.dart';
part 'widgets/chat_list_view.dart';

@RoutePage()
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      extendBodyBehindAppBar: true,
      body: BlocListener<ChatBloc, ChatState>(
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
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.7,
                child: CustomImageView(
                  imagePath: AppAssets.backgroundIcon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                (MediaQuery.sizeOf(context).height * 0.05418719).hs,
                _ChatHeader(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: _ChatListView(),
                  ),
                ),

                _ChatTextField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
