import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: const [
          BackgroundCirclePainter(),
          _MainSection(),
        ],
      ),
    );
  }
}

class _MainSection extends StatelessWidget {
  const _MainSection();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomBodySection(),
        ],
      ),
    );
  }
}
