library page_router;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/animation/physics_card_drag_demo.dart';

class Page {
  final String title;
  final String url;
  final Widget widget;

  Page(this.title, this.url, this.widget);
}

List<Page> pages = [
  Page('Animate a widget using a physics simulation', 'wwf',
      const PhysicsCardDragDemo()),
];
