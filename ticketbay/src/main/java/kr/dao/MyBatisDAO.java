package kr.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// 1. database 연결 -> config.xml과 MyBatis API 연결
	// 초기화 블럭
	static {
		try {
			String resource = "kr/dao/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 전체리스트 가져오기	
	public List<SalesWriteVO> allList(){
		SqlSession session = sqlSessionFactory.openSession();
		List<SalesWriteVO> list=session.selectList("allList");
		session.close();
		return list;
	}
	
	// 카테고리리스트 가져오기
	public List<CategoryVO> cateList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<CategoryVO> catelist=session.selectList("cateList");
		session.close();
		return catelist;
	}
	
	
	
	// 상세보기(pd_code)
	public SalesWriteVO getBypdCode(String pd_code) {
		SqlSession session = sqlSessionFactory.openSession();
		SalesWriteVO vo=session.selectOne("getBypdCode", pd_code);
		session.close();
		return vo;
	}

	// 판매등록
	public void salesInsert(SalesWriteVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("salesInsert", vo);
		session.commit();
		session.close();
		}

	
	public List<MemberVO> allMList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MemberVO> list = session.selectList("allMList");
		session.close(); // 반납
		return list;
	}
	
	public List<DeliveryVO> allDList(String u_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<DeliveryVO> dlist = session.selectList("allDList", u_id);
		session.close(); // 반납
		return dlist;
	}
	
	public void memInsert(MemberVO mvo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("memInsert", mvo);
		session.commit();
		session.close();
	}
	
	public MemberVO memLogin(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO mvo = session.selectOne("memLogin", vo);
		session.close();
		
		System.out.println("dao");
		
		return mvo;
	}
	
	public void memUpdate(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("memUpdate", vo);
		session.commit();
		session.close();
	}
	
	public void memDelete(String u_ID) {
		System.out.println("dao : " + u_ID);

		SqlSession session = sqlSessionFactory.openSession();
		session.delete("memDelete", u_ID);
		session.commit();
		session.close();
	}
	
	public void addrInsert(DeliveryVO dvo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("addrInsert", dvo);
		session.commit();
		session.close();
	}
	
	public void cancelbidInsert(MoneyVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("cancelbidInsert", vo);
		session.commit();
		session.close();
	}
	
	public void moneyInsert(MoneyVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("moneyInsert", vo);
		session.commit();
		session.close();
	}
	
	public MemberVO getUserinfo(String u_id) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO mvo = session.selectOne("getUserinfo", u_id);
		
		session.close();
		
		return mvo;
	}
	
}
