import 'package:flutter/material.dart';

class TrackLevelScreen extends StatefulWidget {
  const TrackLevelScreen({super.key});

  @override
  State<TrackLevelScreen> createState() => _TrackLevelScreenState();
}

class _TrackLevelScreenState extends State<TrackLevelScreen> {
  int selectedTrackIndex = 1;
  String selectedLevel = 'Beginner';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const orange = Color(0xFFF6A100);
    const bg = Color(0xFFF8F8F8);

    final tracks = <_TrackItem>[
      _TrackItem('UI/UX', "assets/images/ui.png"),
      _TrackItem('Frontend', "assets/images/frontend.png"),
      _TrackItem('Flutter', "assets/images/flutter.png"),
      _TrackItem('Backend', "assets/images/backend.png"),
      _TrackItem('Data Science', "assets/images/datascience.png"),
      _TrackItem('Data Engineering', "assets/images/dataEngineering.png"),
      _TrackItem('Embedded Systems', "assets/images/embeded.png"),
      _TrackItem('Cyber Security', "assets/images/cybersecurity.png"),
    ];

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 100,
            child: CurveBackground(),
          ),

          // Content
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    // Title
                    Text(
                      'Which track are you interested in?',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF333333),
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Grid of track cards
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tracks.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.1,
                          ),
                      itemBuilder: (context, index) {
                        final item = tracks[index];
                        final isSelected = index == selectedTrackIndex;
                        return _TrackCard(
                          title: item.title,
                          image: item.image,
                          isSelected: isSelected,
                          onTap: () =>
                              setState(() => selectedTrackIndex = index),
                        );
                      },
                    ),

                    const SizedBox(height: 24),

                    // Subtitle
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'What is your current level in Programming Basics',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF333333),
                          fontSize: 16,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Radio options horizontally
                    Wrap(
                      spacing: 16,
                      runSpacing: 8,
                      children: [
                        _LevelOption(
                          label: 'Beginner',
                          value: 'Beginner',
                          groupValue: selectedLevel,
                          onChanged: (v) => setState(() => selectedLevel = v),
                        ),
                        _LevelOption(
                          label: 'Intermediate',
                          value: 'Intermediate',
                          groupValue: selectedLevel,
                          onChanged: (v) => setState(() => selectedLevel = v),
                        ),
                        _LevelOption(
                          label: 'Advanced',
                          value: 'Advanced',
                          groupValue: selectedLevel,
                          onChanged: (v) => setState(() => selectedLevel = v),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Bottom Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: orange,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class CurvedPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     final paint = Paint()
//       ..color = const Color(0xFFFBF3E3)
//       ..style = PaintingStyle.fill;
//
//     final path = Path();
//
//
//     path.moveTo(0, size.height * 0.2);
//
//
//     path.cubicTo(
//       size.width * 0.025, size.height * 0.015,
//       size.width * 0.075, size.height * 0.55,
//       size.width, size.height * -0.045,
//     );
//
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//     path.close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
//
// }
// class CurvedPainter extends CustomPainter {
//   final Color color;     // 👈 اللون
//   final double height;   // 👈 الارتفاع النسبي للكيرف (0.0 إلى 1.0)
//
//   CurvedPainter({
//     required this.color,
//     this.height = 0.2,
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..style = PaintingStyle.fill;
//
//     final path = Path();
//
//
//     path.moveTo(0, size.height * height);
//
//     path.cubicTo(
//       size.width * 0.025, size.height * 0.015,
//       size.width * 0.075, size.height * 0.55,
//       size.width, size.height * -0.045,
//     );
//
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//     path.close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CurvedPainter oldDelegate) {
//     return oldDelegate.color != color || oldDelegate.height != height;
//   }
// }
// class CurvedPainter extends CustomPainter {
//   final Color color;
//   final double curveScale;
//   final double startOffset; // نسبة بداية الكيرف من اليسار (0-1)
//   final double endOffset;   // نسبة نهاية الكيرف قبل الحافة اليمنى (0-1)
//
//   CurvedPainter({
//     required this.color,
//     this.curveScale = 1.0,
//     this.startOffset = 0.0,
//     this.endOffset = 1.0,
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..style = PaintingStyle.fill;
//
//     final path = Path();
//
//     double startX = size.width * startOffset;
//     double endX = size.width * endOffset;
//
//     path.moveTo(startX, size.height * 0.25 * curveScale);
//
//     path.cubicTo(
//       startX + (endX - startX) * 0.25, size.height * 0.05 * curveScale,
//       startX + (endX - startX) * 0.55, size.height * 0.7 * curveScale,
//       endX, size.height * 0.25 * curveScale,
//     );
//     path.lineTo(endX, 0);
//     path.lineTo(startX, 0);
//     path.close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CurvedPainter oldDelegate) {
//     return oldDelegate.color != color ||
//         oldDelegate.curveScale != curveScale ||
//         oldDelegate.startOffset != startOffset ||
//         oldDelegate.endOffset != endOffset;
//   }
// }

//================================
class CurveBackground extends StatelessWidget {
  const CurveBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200, // ممكن تغيري الارتفاع حسب التصميم
      child: Stack(
        children: [
          // الموجة الخلفية (الأفتح)
          CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: _CurvePainter(
              // اللون الأفتح
              color: const Color(0xFFFBF3E3),
              yFactor: 0.6,
            ),
          ),
          // الموجة الأمامية (الأغمق شوية)
          CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: _CurvePainter(
              color: const Color(0xFFFFE7B7), // اللون الأغمق
              yFactor: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}

class _CurvePainter extends CustomPainter {
  final Color color;
  final double yFactor;

  _CurvePainter({required this.color, required this.yFactor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * yFactor);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * (yFactor + 0.1),
      size.width * 0.5,
      size.height * yFactor,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * (yFactor - 0.15),
      size.width,
      size.height * yFactor,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _TrackItem {
  final String title;
  final String image;

  _TrackItem(this.title, this.image);
}

class _TrackCard extends StatelessWidget {
  final String title;
  final String image;
  final bool isSelected;
  final VoidCallback onTap;

  const _TrackCard({
    required this.title,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const orange = Color(0xFFF6A100);

    return Material(
      color: isSelected ? orange : Colors.white,
      elevation: isSelected ? 2 : 1,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: isSelected
                ? null
                : Border.all(color: const Color(0xFFEDEDED)),
            boxShadow: [
              if (!isSelected)
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.04),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,width: 48,height: 48,

                color: isSelected ? Colors.white : orange,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LevelOption extends StatelessWidget {
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String> onChanged;

  const _LevelOption({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    const orange = Color(0xFFF6A100);
    final isSelected = value == groupValue;
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () => onChanged(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? orange : const Color(0xFFBDBDBD),
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: isSelected ? orange : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: const Color(0xFF333333),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}


