import 'package:flutter/material.dart';

import '../../model/onboarding_item.dart';
import 'auth/login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // قائمة الشرائح مبنية على الـ Model
  final List<OnboardingItem> _items = const [
    OnboardingItem(
      title: 'Welcome to Quizzo',
      description: 'Compete with friends, earn points, and climb the leaderboard in this addictive trivia challenge..',
      imagePath: 'assets/images/welcome_1.png',
    ),
    OnboardingItem(
      title: 'The Ultimate Trivia Challenge',
      description: 'Put your knowledge to the test and prove your expertise across a wide range of topics in this engaging game.',
      imagePath: 'assets/images/goods_2.png',
    ),
    OnboardingItem(
      title: 'Test Your Knowledge',
      description: 'Quizzo is the perfect app to challenge yourself and your friends, with endless trivia fun at your fingertips..',
      imagePath: 'assets/images/Group_3.png',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isLastPage = _currentPage == _items.length - 1;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 246, 219),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 254, 218),
        elevation: 0,
        actions: [
          // زر Skip يظهر فقط إذا لم نكن في الصفحة الأخيرة
          if (!isLastPage)
            TextButton(
              onPressed: () {
                _pageController.jumpToPage(_items.length - 1);
              },
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // مساحة عرض الشرائح التفاعلية
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _items.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return Column(
                    children: [
                      const Spacer(),
                      // الصورة بالأعلى خارج الـ Container
                      Image.asset(item.imagePath, height: 260),
                      const Spacer(),

                      // الـ Container يبدأ من عند العنوان ويضم ما تحته
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 32.0,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                          // يمكنكِ إضافة ظل هنا إن أردتِ (boxShadow)
                        ),
                        child: Column(
                          children: [
                            // العنوان
                            Text(
                              item.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            // الوصف
                            Text(
                              item.description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 24),
                            // النقاط أو الأزرار إذا كانت جزءاً من الكرت
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // شريط التنقل والنقاط في الأسفل
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // نقاط المؤشر
                  Row(
                    children: List.generate(_items.length, (index) {
                      final bool isActive = index == _currentPage;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        height: 8.0,
                        width: isActive ? 24.0 : 8.0,
                        decoration: BoxDecoration(
                          color: isActive
                              ? const Color(0xFF2563EB)
                              : const Color(0xFFE2E8F0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      );
                    }),
                  ),

                  // زر التالي / البدء
                  ElevatedButton(
                    onPressed: () {
                      if (isLastPage) {
                        // الانتقال لواجهة تسجيل الدخول وحذف شاشات الإنترو
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      } else {
                        // الانتقال للشريحة التالية في الإنترو
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2563EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      isLastPage ? 'Get Started' : 'Next',

                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
