import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpenseBodyIconsRow extends StatelessWidget {
  const ExpenseBodyIconsRow({
    super.key,
    required this.image,
    required this.isSelected,
  });

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFFAFAFA).withOpacity(0.5),
            ),
            child: SvgPicture.asset(
              image,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : const Color(0xFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: math.pi,
          child: Icon(
            Icons.arrow_back_ios,
            color: isSelected ? Colors.white : const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
