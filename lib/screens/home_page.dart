import 'package:appilon/components/footer.dart';
import 'package:appilon/components/navBar.dart';
import 'package:appilon/components/search_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Navbar(),
          Expanded(
            child: Column(
              children: [
                Expanded(child: SearchSection()),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Footer(text: 'Pro'),
                      Footer(text: 'Enterprise'),
                      Footer(text: 'Store'),
                      Footer(text: 'Blog'),
                      Footer(text: 'Carrers'),
                      Footer(text: 'English (English)'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
