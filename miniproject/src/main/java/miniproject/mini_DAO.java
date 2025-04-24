package miniproject;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

@Repository("mini_DAO") 
public class mini_DAO implements mini_mapper {//implements mini_mapper

	@Resource(name="template")
	public SqlSessionTemplate st; //db연결
	
	@Override
	public int counsel_insert(counsel_DTO dto) {
		int result = this.st.insert("counsel_insert",dto);
		return result;
	}
	
	@Override
		public reservation_DTO reservation_result(String rtel) {
			reservation_DTO result = this.st.selectOne("reservation_result",rtel);
			return result;
		}
	
	@Override
		public int reservation_insert(reservation_DTO dto) {
			int result = this.st.insert("reservation_insert", dto);
			return result;
	}
	
	//typeinfo 하나의 데이터만 받는 곳
	@Override
	public type_info_DTO typeinfo_selectone(String bunyang_index) {
		type_info_DTO result = this.st.selectOne("typeinfo_selectone",bunyang_index);
		return result;
	}
	
	public user_DTO email_search(user_DTO dto) {
		user_DTO esearch = this.st.selectOne("email_search",dto);
		return esearch;
	}
	
	public user_DTO login_select(user_DTO dto) {
		user_DTO login = this.st.selectOne("login_select",dto);
		return login;
	}

	public List<md_choice_DTO> mdchoice_select(){
		List<md_choice_DTO> mdlist = this.st.selectList("mdchoice_select");
		return mdlist;
	}
	
	@Override
	public List<type_info_DTO> typeinfo_select(){
		List<type_info_DTO> typelist = this.st.selectList("typeinfo_select");
		return typelist;
	}
	
	@Override
	public int user_insert(user_DTO dto) { //회원가입(회원정보 insert)
		int result = this.st.insert("user_insert", dto);
		return result;
	}
	
	
	public List<web_info_DTO> copyright_select(){
		//selectOne : 데이터 한개만 가져올 때 (ArrayList,DTO, List, Map 배열로 가져올 수 있음)
		//selectList : 여러 데이터를 가져올 때 (List배열로 가져옴)
		List<web_info_DTO> copylist = this.st.selectList("copyright_select");
		return copylist;
	}
}

