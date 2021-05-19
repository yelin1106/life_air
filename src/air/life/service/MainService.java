package air.life.service;

import java.util.Random;

import org.json.simple.JSONObject;

public class MainService {
	
	public String getRandomname() {
		JSONObject json=new JSONObject();
		json.put("flag", "fail");
		
		String[] adj={"흩어진", "담백한", "아늑한", "타당한", "공정한", "빛나는", "훌륭한",
				"명랑한", "쾌활한", "야생의", "황혼의", "용감한", "넉넉한", "단호한", "정직한",
				"솔직한", "진실된", "신비한", "엉뚱한", "행운의", "완벽한", "멋진", "가파른", "고마운",
				"네모난", "동그란", "뜨거운", "알맞은", "엄청난", "작은", "좋은", "조그만", "점잖은"};
		String[] name= {"유리", "광렬", "달수", "호동", "경실", "준표", "휘혈", "미화", "현철",
				"종국", "아름", "창섭", "점례", "국진", "민수", "형구", "민국", "철수"};
		Random rand = new Random();
		int adjIdx=rand.nextInt(adj.length);
		int nameIdx=rand.nextInt(name.length);
		
		String randomName=adj[adjIdx]+name[nameIdx];
		json.put("flag", "success");
		json.put("randomName", randomName);

		return json.toJSONString();
	}//getRandomname
	
}//class
