// To imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

// underscore to indicate that these variables are private.
// See https://www.dartlang.org/guides/language/effective-dart/design#libraries
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Selection extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;


  // constructor
  Selection({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.color,
    @required this.icon,
  })  : assert(title != null),
        assert(subtitle != null),
        assert(color != null),
        assert(icon != null),
        super(key: key);

  @override
  // The context parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // InkWell must have Material as parent
    // https://api.flutter.dev/flutter/material/InkWell-class.html
    return Material(
      child: Container(
        height: _rowHeight,
//        color: Colors.transparent, // otherwise can't see inkwell

          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: InkWell(
                //borderRadius: BorderRadius.circular(_rowHeight / 2),
                highlightColor: color, // when holding the tap
                splashColor: color.withAlpha(60), // lighten the original color
                onTap: () {
                  print('InkWell Tapped!');
                },
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      icon,
                    size: 60.0,
                    ),
                    title: Text(title),
                    subtitle: Text(subtitle),
                  )
                ],
              ),

            ),
          ),
        ),
      ),

    );
  }
}