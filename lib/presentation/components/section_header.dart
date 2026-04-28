import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeMoreTap;

  const SectionHeader({
    super.key,
    required this.title,
    required this.onSeeMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
            ),
          ),
          InkWell(
            onTap: onSeeMoreTap,
            borderRadius: BorderRadius.circular(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text('See More'),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios, size: 14.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
