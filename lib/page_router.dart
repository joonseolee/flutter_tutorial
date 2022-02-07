library page_router;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/design/adopt_font.dart';
import 'package:flutter_tutorial/design/drawer_screen.dart';
import 'package:flutter_tutorial/design/share_theme.dart';
import 'package:flutter_tutorial/design/snackbar_demo.dart';
import 'package:flutter_tutorial/design/tab_bar_demo.dart';
import 'package:flutter_tutorial/design/update_orientation.dart';
import 'package:flutter_tutorial/forms/text_field_change_demo.dart';
import 'package:flutter_tutorial/forms/text_field_focus_demo.dart';
import 'package:flutter_tutorial/forms/validate_form.dart';
import 'package:flutter_tutorial/gestures/ripples_demo.dart';
import 'package:flutter_tutorial/gestures/swipe_list_demo.dart';
import 'package:flutter_tutorial/images/display_image_demo.dart';
import 'package:flutter_tutorial/lists/mixed_list_demo.dart';
import 'package:flutter_tutorial/lists/simple_grid_demo.dart';
import 'package:flutter_tutorial/lists/simple_sliver_demo.dart';
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
  Page('Use themes to share colors and font styles', '색/폰트 공유',
      const ShareTheme()),
  Page('Work with tabs', '탭페이지 만들기', const TabBarDemo()),
  Page('Build a form with validation', 'input validation 체크',
      const ValidateForm()),
  Page(
      'change in the text field', 'change 리스너 추가', const TextFieldChangeDemo()),
  Page('Focus and text field', 'focus 동작 확인', const TextFieldFocusDemo()),
  Page('Add Material touch ripples', '버튼누르면 snackbar 동작', const RipplesDemo()),
  Page('Implement swipe to dismiss', '스와프로 아이템 삭제', const SwipeListDemo()),
  Page('Display images from the internet', '인터넷 이미지 띄우기',
      const DisplayImageDemo()),
  Page('Create a grid list', 'Grid 만들기', const SimpleGridDemo()),
  Page('Create lists with different types of items', 'Mixed data Grid 만들기',
      MixedListDemo()),
  Page('Place a floating app bar above a list', '유동적인 스크롤 형태 변환',
      const SimpleSliverDemo())
];
