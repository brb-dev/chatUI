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
            hintText: 'Enter text...',
            fillColor: AppColor.textboxColor,
            filled: true,
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
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ),
    );
  }
}
