part of '../chat_view.dart';

class _ChatTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),

      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 4 * 24.0 + 24, // approx line height + padding
        ),
        child: TextField(
          maxLines: null,
          minLines: 1,
          style: Theme.of(
            context,
          ).textTheme.titleSmall!.copyWith(color: AppColor.black),
          decoration: InputDecoration(
            hintText: 'Enter your message',
            fillColor: AppColor.textboxColor,
            filled: true,
            contentPadding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: AppAssets.postIcon,
                    width: 28,
                    height: 32,
                  ),
                  8.wd,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: AppAssets.cameraIcon,
                        width: 26,
                        height: 26,
                      ),

                      6.hs,
                      CustomImageView(
                        imagePath: AppAssets.flagIcon,
                        width: 18,
                        height: 28,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),

              borderSide: BorderSide(color: AppColor.palleteOne),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),

              borderSide: BorderSide(color: AppColor.palleteOne),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),

              borderSide: BorderSide(color: AppColor.palleteOne),
            ),
          ),
        ),
      ),
    );
  }
}
