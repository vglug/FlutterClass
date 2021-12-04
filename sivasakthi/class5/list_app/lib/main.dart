import 'package:flutter/material.dart';
import 'dart:ui';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

}
}
class ListViewBuilder extends StatelessWidget {


			
      leading: CircleAvatar(),
			
			title:Text("List item $index"),
      onTap: () {
                    Navigator.push(
                        con,
                        MaterialPageRoute(
                            builder: (cc) => OtherScreen(value: '$Hi')));
                  }
      
			);
      
		}
		),
	);
}

  OtherScreen({required String value}) {}
}

    );
  }
}