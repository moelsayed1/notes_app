import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build Your Career With Flutter Developer',
                style: TextStyle(
                  color: Color(0xff99753F),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
              ),
              color: Colors.black,
              iconSize: 32.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'May 26, 2024',
              style: TextStyle(
                color: Color(0xff99753F),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
