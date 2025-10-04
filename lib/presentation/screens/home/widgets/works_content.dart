import 'package:flutter/material.dart';

class WorksContent extends StatelessWidget {
  const WorksContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
      constraints: BoxConstraints(maxHeight: 450),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 50),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return _workCard();
        },
      ),
    );
  }

  Widget _workCard() {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 200,
            minWidth: 150,
            maxHeight: 350
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/test_work.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(padding: EdgeInsets.all(12) ,color: Colors.white, child: Text("Френч")),
      ],
    );
  }
}
