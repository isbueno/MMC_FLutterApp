import 'package:flutter/material.dart';

class BottomNavigationModel extends StatefulWidget {
  final int currentPageIndex;
  final Function(int) onPageChanged;

  const BottomNavigationModel({super.key, 
    required this.currentPageIndex,
    required this.onPageChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationModelState createState() => _BottomNavigationModelState();
}

class _BottomNavigationModelState extends State<BottomNavigationModel> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentPageIndex,
      onTap: widget.onPageChanged,
      items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff333333),),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined, color: Color(0xff333333),),
              label: 'Calcular MMC'
          ),
       ],
    );
  }
}
