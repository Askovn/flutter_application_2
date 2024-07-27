import 'package:flutter/material.dart';

import '../pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEmailVerified = false; // Флаг для проверки подтверждения почты

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Аватар
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/avatar1_kot3.png'), // Замените на ваш аватар
            ),
            const SizedBox(height: 20),
            // Почта
            const Text(
              'example@email.com', // Замените на реальную почту
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            // Кнопка подтверждения почты
            if (!isEmailVerified)
              ElevatedButton(
                onPressed: () {
                  // Отправка запроса подтверждения почты
                  // ... (здесь реализуйте логику отправки запроса)
                  // Например, можно показать диалог с сообщением о том, что письмо отправлено
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Подтверждение почты'),
                      content: const Text('Письмо с подтверждением отправлено на ваш адрес.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Подтвердить почту'),
              ),
            const SizedBox(height: 20),
            // Кнопка выхода
            ElevatedButton(
              onPressed: () {
                // Выход из профиля
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 238, 82, 71), // Устанавливаем красный цвет
              ),
              child: const Text('Выйти'),
            ),
          ],
        ),
      );
  }
}
