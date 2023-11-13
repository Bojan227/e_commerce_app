import 'package:flutter/material.dart';

class RowWithSpacing extends Row {
  RowWithSpacing({
    super.key,
    double spacing = 8,
    bool hasLeadingSpace = false,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.verticalDirection,
    super.crossAxisAlignment,
    super.textBaseline,
    super.textDirection,
    List<Widget> children = const [],
  }) : super(
          children: [
            ...hasLeadingSpace
                ? [
                    SizedBox(
                      width: spacing,
                    )
                  ]
                : <Widget>[],
            ...children.expand(
              (element) => [
                element,
                SizedBox(
                  width: spacing,
                )
              ],
            )
          ],
        );
}
