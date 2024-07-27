import 'package:flutter/material.dart';

class DoDidDoneTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF9f7bf6), // Primary color
      primary: const Color(0xFF9f7bf6), // Primary color
      secondary: const Color(0xFF4ceb8b), // Secondary color
    ),
    useMaterial3: true,
    // Добавляем стиль для кнопок
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF4ceb8b), // Фон кнопок
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ) ,
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Текст кнопок белый
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: (Colors.white)), // Текст кнопок белый
        ),
      ),
    ),
    // Добавляем стиль для BottomNavigationBar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xFF9f7bf6), // Основной цвет для выбранных иконок
      unselectedItemColor: Colors.grey, // Серый цвет для невыбранных иконок
    ),
  );
}
