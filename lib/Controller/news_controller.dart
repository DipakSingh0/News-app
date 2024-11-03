import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Model/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> trandingNews4 = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
// to show 5 news for instance only
  RxList<NewsModel> newsForYou4 = <NewsModel>[].obs;
  RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
  RxList<NewsModel> appleNews4 = <NewsModel>[].obs;
  RxList<NewsModel> businesNewsList = <NewsModel>[].obs;
  RxList<NewsModel> businesNews4 = <NewsModel>[].obs;
  RxList<NewsModel> elonNewsList = <NewsModel>[].obs;
  RxList<NewsModel> elonNews4 = <NewsModel>[].obs;

  RxBool isTrandingLoading = false.obs;
  RxBool isNewsForYouLoading = false.obs;
  RxBool isAppleLoading = false.obs;
  RxBool isBusinesLoading = false.obs;
  RxBool isElonLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    getTrendingNews();
    getnewsForYou();
    getAppleNews();
    getBusinesNews();
    getElonNews();
  }

  // function to get the trending news from the api
  Future<void> getTrendingNews() async {

    isTrandingLoading.value = true;

    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c667274f38fe4eba95713e193de82873";
    try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          trandingNewsList.add(NewsModel.fromJson(news));
        }

        // to display only 5 news for instance
        trandingNews4.value = trandingNewsList.sublist(0, 4).obs;

      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }

    isTrandingLoading.value = false;
    // print(trandingNewsList);
  }

  Future<void> getnewsForYou() async {
    isNewsForYouLoading.value = true;

    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=API_KEY";
    try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          newsForYouList.add(NewsModel.fromJson(news));
        }

        // to display only 5 news for instance
        newsForYou4.value = newsForYouList.sublist(0, 4).obs;

      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }
    isNewsForYouLoading.value = false;

  }

  Future<void> getAppleNews() async {
    isAppleLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-10-03&sortBy=publishedAt&apiKey=API_KEY";
    try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          appleNewsList.add(NewsModel.fromJson(news));
        }

        // to display only 5 news for instance
        appleNews4.value = appleNewsList.sublist(0, 4).obs;

      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }
    isAppleLoading.value = false;

  }

  Future<void> getBusinesNews() async {
    isBusinesLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=API_KEY";
    try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          businesNewsList.add(NewsModel.fromJson(news));
        }

        // to display only 5 news for instance
        businesNews4.value = businesNewsList.sublist(0, 4).obs;
      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }
    isBusinesLoading.value = false;
  }

  Future<void> getElonNews() async {
    isElonLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-10-03&sortBy=publishedAt&apiKey=API_KEY";
    try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // too add every  news to the list from given article
        for (var news in articals) {
          elonNewsList.add(NewsModel.fromJson(news));
        }

        // to display only 5 news for instance
        elonNews4.value = elonNewsList.sublist(0, 4).obs;
      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }
    isElonLoading.value = false;
  }

  Future<void> searchNews(String search) async {
    isNewsForYouLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=apple&from=2024-11-02&to=2024-11-02&sortBy=popularity&apiKey=API_KEY";
    try {
      var response = await http.get(Uri.parse(baseURL));
      // print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];

        // to search first clear the previous data 
        newsForYouList.clear();

        //then add news like this 

        // too add every  news to the list from given article
        for (var news in articals) {
          newsForYouList.add(NewsModel.fromJson(news));
        }

      } else {
        print("something went wrong: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }
    isElonLoading.value = false;
  }


}
