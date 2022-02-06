library page_router;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/design/adopt_font.dart';
import 'package:flutter_tutorial/design/drawer_screen.dart';
import 'package:flutter_tutorial/design/share_theme.dart';
import 'package:flutter_tutorial/design/snackbar_demo.dart';
import 'package:flutter_tutorial/design/update_orientation.dart';
import 'package:flutter_tutorial/pages/animation/animated_container_app.dart';
import 'package:flutter_tutorial/pages/animation/fade_widget.dart';
import 'package:flutter_tutorial/pages/animation/physics_card_drag_demo.dart';

class Page {
  final String title;
  final String url;
  final Widget widget;

  Page(this.title, this.url, this.widget);
}

List<Page> pages = [
  Page('Animate a widget using a physics simulation', '드래그 앤 드롭 이미지',
      const PhysicsCardDragDemo()),
  Page('Animated container app', '도형 크기 랜덤으로 변경하기',
      const AnimatedContainerApp()),
  Page('fade widget', '이미지 흐려지게 만들기', const FadeWidget(title: '')),
  Page('Add a drawer to a screen', 'drawer 추가하기', const DrawerScreen()),
  Page('Display a snackbar', '스낵바 띄우기', const SnackBarDemo()),
  Page('Adopt a font', '폰트 적용하기', const AdoptFont()),
  Page('Update the UI based on orientation', '수평/수직에 따라 item ui 변경',
      const UpdateOrientation()),
  Page('use themes to share colors and font styles', '색/폰트 공유',
      const ShareTheme())
];
