class Constants {
  static String TOP_HEADLINES_URL =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=36a4a9085ade49afa5f6578a6ad66164";

  static String headLinesFor(String keyword) 
  {
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=36a4a9085ade49afa5f6578a6ad66164";
  }
}
