package miniproject;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

//mapper.xml과 상호작용 코드

@Mapper
public interface mini_mapper{
	public int user_insert(user_DTO dto); //회원가입
	List<web_info_DTO> copyright_select(); //copyright select
	List<type_info_DTO> typeinfo_select(); //type_info select(weekinfo)
	List<md_choice_DTO> mdchoice_select(); //md_choice select
	user_DTO login_select(user_DTO dto);	//로그인 아직 안짬
	user_DTO email_search(user_DTO dto);	//이메일 찾기
	type_info_DTO typeinfo_selectone(String bunyang_index); //(미완)type_info 값하나만 가져와서 week_tails에 화면 게시판 출력
	public int reservation_insert(reservation_DTO dto); //예약 페이지
	reservation_DTO reservation_result(String rtel);
	int counsel_insert(counsel_DTO dto); //상담 예약
}

