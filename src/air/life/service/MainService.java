package air.life.service;

import java.util.Random;

import org.json.simple.JSONObject;

public class MainService {
	
	public String getRandomname() {
		JSONObject json=new JSONObject();
		json.put("flag", "fail");
		
		String[] adj={"�����", "�����", "�ƴ���", "Ÿ����", "������", "������", "�Ǹ���",
				"�����", "��Ȱ��", "�߻���", "Ȳȥ��", "�밨��", "�˳���", "��ȣ��", "������",
				"������", "���ǵ�", "�ź���", "������", "�����", "�Ϻ���", "����", "���ĸ�", "����",
				"�׸�", "���׶�", "�߰ſ�", "�˸���", "��û��", "����", "����", "���׸�", "������"};
		String[] name= {"����", "����", "�޼�", "ȣ��", "���", "��ǥ", "����", "��ȭ", "��ö",
				"����", "�Ƹ�", "â��", "����", "����", "�μ�", "����", "�α�", "ö��"};
		Random rand = new Random();
		int adjIdx=rand.nextInt(adj.length);
		int nameIdx=rand.nextInt(name.length);
		
		String randomName=adj[adjIdx]+name[nameIdx];
		json.put("flag", "success");
		json.put("randomName", randomName);

		return json.toJSONString();
	}//getRandomname
	
}//class
