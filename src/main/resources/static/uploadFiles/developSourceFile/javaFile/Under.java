import java.io.IOException;

import org.jsoup.Jsoup; //import Jsoup
import org.jsoup.nodes.Document; //import Jsoup
import org.jsoup.nodes.Element; //Jsoup 사용선언
import org.jsoup.select.Elements; //import Jsoup
public class Under {
	public void main() {
		Document doc;
		try {
			doc = Jsoup.connect("https://news.sbs.co.kr/news/SectionRssFeed.do?sectionId=01&plink=RSSREADER").get();
			Elements refind = doc.select("item");
			for (Element a : refind) {
				String detailLink = a.select("link").text();
				String title =a.select("title").text();
				String author =a.select("author").text();
				System.out.println(detailLink);
				System.out.println(author);
				System.out.println(title);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
