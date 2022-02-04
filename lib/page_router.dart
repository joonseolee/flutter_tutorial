library page_router;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/animation/animated_container_app.dart';
import 'package:flutter_tutorial/pages/animation/fade_widget.dart';
import 'package:flutter_tutorial/pages/animation/drawer_screen.dart';
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
  Page('fade widget', '이미지 흐려지게 만들기',
      const FadeWidget(title: '')),
  Page('Add a drawer to a screen', 'drawer 추가하기', const DrawerScreen()),
];
