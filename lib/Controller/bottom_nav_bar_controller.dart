import 'package:get/get.dart';
import 'package:newsapp/pages/ArticlePage/article_page.dart';
import 'package:newsapp/pages/HomePage/home_page.dart';
import 'package:newsapp/pages/ProfilePage/profile_page.dart';

class BottomNavBarController extends GetxController{

//shows the starting index 
 RxInt index = 0.obs; 


  //pages
  var pages = [
    HomePage(),
    ArticlePage(),
    ProfilePage(),
  ];
}