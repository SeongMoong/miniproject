package miniproject;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class main_controller {
	
	@Autowired
	private md5_pass md5_pass;
	
	@Resource(name="mini_DAO")
	private mini_DAO dao;
	
	PrintWriter pw = null;
	
	
	@PostMapping("/realty/counsel.do")
	public String counsel_insert(counsel_DTO dto, Model m) {
		int result = this.dao.counsel_insert(dto);
		String msg="";
		if(result > 0) {
			m.addAttribute("msg3", "담당자가 확인 후 해당 상담일시에 맞춰서 연락 드립니다.");
			m.addAttribute("url", "/realty/index.jsp");
			return "realty/msg";
		}
		return null; //"redirect:/realty/index.jsp"
	}
	
	//예약 확인
	@GetMapping("/realty/reservation_check.do")
	public String reservation_result(@RequestParam(name = "rtel")String rtel, Model m, HttpSession ch) {
		reservation_DTO result = this.dao.reservation_result(rtel);
		m.addAttribute("result",result);
		ch.setAttribute("result", result);
		return null;
	}
	
	//예약 넣기
	@PostMapping("/realty/reservation.do")
	public String reservation_insert(reservation_DTO dto, HttpSession ch) {
		int result = this.dao.reservation_insert(dto);
		System.out.println(result);
		ch.setAttribute("result", result);
		return "redirect:/realty/reservation_check.do?rtel=" + dto.getRtel();
	}
	
	
	@GetMapping("/realty/week_tails.do")
	public String typeinfo_selectone(@RequestParam("bunyang_index")String bunyang_index,
			Model m) {
		type_info_DTO result = this.dao.typeinfo_selectone(bunyang_index);
		m.addAttribute("result",result);
		return null;
	}
	
	
	//email_search 
	@PostMapping("/realty/email_search.do")
	public String email_search(@ModelAttribute(name="dto") user_DTO dto, Model m) throws Exception {
		//bemail 이랑 btel 값 받아서 비교 후 search_myinfo.html에다가 bemail출력
		
		String msg2 = "";
		System.out.println(dto);
		user_DTO esearch = this.dao.email_search(dto);
		if(esearch == null) {
			
			  msg2 ="alert('가입하신 정보는 확인 되지 않았습니다.');" 
					  + "location.href='/realty/msg.jsp';";
			  m.addAttribute("msg2",msg2);
		
			  return null;
			  //System.out.println("null값이여");
			 // return "/realty/email_search";
		}
		else {
			System.out.println("이메일 찾음요~");
			m.addAttribute("esearch",esearch);
		}
		
		/*
		 * if(esearch != null) { System.out.println("이메일 찾음요~"); } else { msg2
		 * ="alert('가입하신 정보는 확인 되지 않았습니다.');" + "location.href='/realty/msg.jsp';"; //수정
		 * System.out.println("null값이여"); }
		 */
		//System.out.println(esearch.bname);
		return "/realty/search_myinfo";
	}
	
	
	//login
	@PostMapping("/realty/login.do")
	public String login_select(@RequestParam String bemail, @RequestParam String bpass ,user_DTO dto, Model m, HttpSession se) {
		// 입력 비밀번호 암호화
		String encPass = md5_pass.md5_make(bpass);
		dto.setBpass(encPass); // DTO에 암호화된 비번을 넣어줌
		
		user_DTO loginok = this.dao.login_select(dto);
		System.out.println(loginok);
	    System.out.println("입력된 이메일: " + bemail);
	    System.out.println("입력된 비번: " + bpass);
	    System.out.println("DTO 내부 이메일: " + dto.getBemail());
	    System.out.println("DTO 내부 비번: " + dto.getBpass());

        if(loginok != null && loginok.bemail.equals(bemail) && loginok.bpass.equals(encPass)) {
            // 로그인 성공
        	System.out.println("성공");
        	se.setAttribute("suser", loginok);
           //m.addAttribute("user", "suser");
        	return "redirect:/realty/index.jsp";	  // 성공 후 이동할 페이지 (예: loginSuccess.jsp)
        } else {
            // 로그인 실패
        	System.out.println("실패");
            return "Fail";  // 실패 후 이동할 페이지 (예: loginFailure.jsp)
            
        }
	}
	
	//md_choice.jsp 출력
	@GetMapping("/realty/mdchoice.do")
	public String mdchoice_select(Model m) {
		List<md_choice_DTO> mdlist = this.dao.mdchoice_select();
		m.addAttribute("mdlist",mdlist);
		return null;
	}
	
	//weekinfo.jsp 출력
	@GetMapping("/realty/weekinfo.do")
	public String weekinfo_select(Model m) {
		List<type_info_DTO> typelist = this.dao.typeinfo_select();
		m.addAttribute("typelist",typelist);
		return null;
	}
	
	//copyright 출력
	@GetMapping("/realty/copyright.do")
	public String copyright_select(Model m) {
		List<web_info_DTO> copylist = this.dao.copyright_select();
		m.addAttribute("copylist",copylist);
		return null; 
	}
	
	@PostMapping("/realty/memeber_joinok.do") //회원가입 완료 controll => joinok
	public String join_ok(user_DTO dto,@RequestParam(defaultValue = "N",required=false)String agree[], Model m) {
		try {
			String originPass = dto.getBpass(); // 원본 비밀번호 가져오기
			String encPass = md5_pass.md5_make(originPass); // md5 암호화
			dto.setBpass(encPass); // 암호화된 비밀번호로 세팅
			
			dto.setBinfo1(agree[0]);
			dto.setBinfo2(agree[1]);
			dto.setBinfo3(agree[2]);
			dto.setBinfo4(agree[3]);
			int result = this.dao.user_insert(dto); //dao에 있는 user_in메소드를 dto를 넣어 result에 대입
			System.out.println(result);
			String msg="";
			if(result > 0) {
				msg ="alert('회원 가입이 완료 되었습니다.');"
				+ "location.href='/realty/msg.jsp';"; //수정
			}
			m.addAttribute("msg",msg);
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			
		}
		return "/realty/index";	//경로 나중에 수정
	}
	
	@GetMapping("/test.do")
	public void test(Model m) {
		m.addAttribute("test");
		System.out.println("test");
	}
	
}
