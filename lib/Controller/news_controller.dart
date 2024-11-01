import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Model/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;


  @override
  void onInit() {
    super.onInit();
    getTrendingNews(); // Fetch data when the controller is initialized
  }
  // function to get the trending news from the api
  Future<void> getTrendingNews() async {
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-09-30&sortBy=publishedAt&apiKey=be9da35fbaa44b9e8bc531c95f5f17f8";
        try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        // print(response.body);

        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          trandingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } 
    catch (ex) {
      print(ex);
    }

    // print(trandingNewsList);
  }
  Future<void> newsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-09-30&sortBy=publishedAt&apiKey=be9da35fbaa44b9e8bc531c95f5f17f8";
        try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        // print(response.body);

        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } 
    catch (ex) {
      print(ex);
    }

    // print(trandingNewsList);
  }
  
  }