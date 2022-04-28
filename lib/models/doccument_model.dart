class Document {
  String doc_title;
  String doc_url;
  String doc_date;
  int page_num;

  Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);

  //Creating list to get document.
  static List<Document> doc_list = [
    Document(
      "THE IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION", 
      "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf", 
      "18-03-2020",
       40,
    ),
    Document(
      "THE IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION", 
      "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf", 
      "18-03-2020",
       40,
    ),
    Document(
      "THE IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION", 
      "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf", 
      "18-03-2020",
       40,
    ),

  ];
}