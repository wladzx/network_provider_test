import 'package:flutter/material.dart';
import 'package:network_provider_test/theme/ch_colors.dart';
import 'package:styled_text/tags/styled_text_tag_base.dart';
import 'package:styled_text/widgets/styled_text.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

enum CHTextType {
  heading1,
  heading2,
  heading3,
  heading4,
  heading5,
  heading6,
  subtitle,
  overline,
  body1,
  body2,
  body3,
  button1,
  button2,
}

class CHText extends StatelessWidget {
  const CHText({
    required this.text,
    required this.type,
    this.textAlign,
    this.tags,
    this.color,
    this.isFitted = false,
    super.key,
  });

  final String text;
  final CHTextType type;
  final TextAlign? textAlign;
  final Color? color;
  final Map<String, StyledTextTagBase>? tags;
  final bool isFitted;

  @override
  Widget build(BuildContext context) => isFitted
      ? Text(
          text,
          textAlign: textAlign,
          style: _getTextStyle(context),
        )
      : StyledText(
          text: text,
          tags: tags,
          textAlign: textAlign,
          style: _getTextStyle(context),
        );

  TextStyle _getTextStyle(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    TextStyle? textStyle;
    switch (type) {
      case CHTextType.heading1:
        textStyle = theme.headlineLarge;
        break;
      case CHTextType.heading2:
        textStyle = theme.headlineMedium;
        break;
      case CHTextType.heading3:
        textStyle = theme.labelLarge;
        break;
      case CHTextType.heading4:
        textStyle = theme.labelMedium;
        break;
      case CHTextType.heading5:
        textStyle = theme.labelSmall;
        break;
      case CHTextType.heading6:
        textStyle = theme.displaySmall;
        break;
      case CHTextType.body1:
        textStyle = theme.bodyLarge;
        break;
      case CHTextType.body2:
        textStyle = theme.bodyMedium;
        break;
      case CHTextType.body3:
        textStyle = theme.bodySmall;
        break;
      case CHTextType.subtitle:
        textStyle = theme.titleLarge;
        break;
      case CHTextType.button1:
        textStyle = theme.titleMedium;
        break;
      case CHTextType.button2:
        textStyle = theme.titleSmall;
        break;
      case CHTextType.overline:
        textStyle = theme.displayLarge;
        break;
      default:
    }
    return textStyle!.copyWith(color: color ?? CHColors.grey.shade900);
  }
}

@widgetbook.UseCase(
  name: 'Heading 1',
  type: CHText,
)
Widget heading1Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Heading 1",
      type: CHTextType.heading1,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Heading 2',
  type: CHText,
)
Widget heading2Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Heading 2",
      type: CHTextType.heading2,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Heading 3',
  type: CHText,
)
Widget heading3Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Heading 3",
      type: CHTextType.heading3,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Heading 4',
  type: CHText,
)
Widget heading4Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Heading 4",
      type: CHTextType.heading4,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Heading 5',
  type: CHText,
)
Widget heading5Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Heading 5",
      type: CHTextType.heading5,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Heading 6',
  type: CHText,
)
Widget heading6Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Heading 6",
      type: CHTextType.heading6,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Subtitle',
  type: CHText,
)
Widget subtitleText(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Subtitle",
      type: CHTextType.subtitle,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Overline',
  type: CHText,
)
Widget overlineText(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Overline",
      type: CHTextType.overline,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Body 1',
  type: CHText,
)
Widget body1Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Body 1",
      type: CHTextType.body1,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Body 2',
  type: CHText,
)
Widget body2Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Body 2",
      type: CHTextType.body2,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Body 3',
  type: CHText,
)
Widget body3Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Body 3",
      type: CHTextType.body3,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Button 1',
  type: CHText,
)
Widget button1Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Button 1 ",
      type: CHTextType.button1,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Button 2',
  type: CHText,
)
Widget button2Text(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: CHText(
      text: "Button 2 ",
      type: CHTextType.button2,
    ),
  );
}