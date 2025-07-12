import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 768;
    final isTablet = width >= 768 && width < 1200;

    return Scaffold(
      backgroundColor: const Color(0xFF080D17),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1300),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NAVBAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.bar_chart,
                          color: Colors.greenAccent,
                          size: 28,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Trade',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    if (!isMobile)
                      Row(
                        children: [
                          _navItem('Home'),
                          _navItem('About'),
                          _navItem('Courses'),
                          _navItem('Contact'),
                          _buttonNav('Log in', dark: true),
                          _buttonNav('Get Started'),
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 60),

                // HERO SECTION
                Flex(
                  direction: isMobile ? Axis.vertical : Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text section
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: isMobile
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Master the Art\nof Trading',
                            textAlign: isMobile
                                ? TextAlign.center
                                : TextAlign.left,
                            style: TextStyle(
                              fontSize: isMobile
                                  ? 28
                                  : isTablet
                                  ? 38
                                  : 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Join our platform to learn trading strategies,\nanalyze markets, and improve your skills.',
                            textAlign: isMobile
                                ? TextAlign.center
                                : TextAlign.left,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFFB0C4D4),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Align(
                            alignment: isMobile
                                ? Alignment.center
                                : Alignment.centerLeft,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.greenAccent,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 28,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30, height: 30),

                    // Image section
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: RadialGradient(
                              colors: [Color(0xFF0F1A2F), Color(0xFF080D17)],
                              center: Alignment.center,
                              radius: 1.0,
                            ),
                          ),
                          height: isMobile ? 260 : 350,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/tablet.png',
                            fit: BoxFit
                                .cover, // esto hace que llene completamente el contenedor
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),

                // INFO CARDS
                Center(
                  child: Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    alignment: WrapAlignment.center,
                    children: const [
                      _InfoCard(
                        icon: Icons.school,
                        title: 'Learn the\nFundamentals',
                        subtitle:
                            'Understand the basics\nof trading and the markets.',
                      ),
                      _InfoCard(
                        icon: Icons.trending_up,
                        title: 'Advanced\nStrategies',
                        subtitle:
                            'Develop your trading edge\nwith in-depth courses.',
                      ),
                      _InfoCard(
                        icon: Icons.shield,
                        title: 'Risk\nManagement',
                        subtitle:
                            'Master risk management techniques\nto protect your investments.',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white70, fontSize: 14),
      ),
    );
  }

  static Widget _buttonNav(String label, {bool dark = false}) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: dark ? const Color(0xFF141E2F) : Colors.greenAccent,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            color: dark ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF0E1525),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.greenAccent, size: 32),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
