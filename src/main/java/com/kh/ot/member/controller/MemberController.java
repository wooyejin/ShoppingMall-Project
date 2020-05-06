package com.kh.ot.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ot.admin.vo.Point;
import com.kh.ot.cart.service.CartService;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.member.service.MemberService;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.service.MypageService;
import com.kh.ot.mypage.vo.CouponMem;

/**
 * @author yejin
 *
 */
/**
 * @author Owner
 *
 */
@SessionAttributes("loginMember")
@Controller
public class MemberController extends HttpServlet {

	// @Autowired 타입의 어노테이션을 붙여주면 생성할 필요없이 변수 선언만 해도
	// 빈 스키냉을 통해 아래의 'mService'의 이름을 가지고 있는 빈을 찾아서
	// 자동으로 생성 후 주입해준다.

	@Autowired
	private MypageService mpService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	   private CartService cService;

//	암호화용
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;



	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용 : 로그인 화면 이동
	 * @return
	 */
	@RequestMapping("loginView.do")
	public String loginView() {

		return "login";
	}

	/**
	 * @작성일 : 0202-04-02
	 * @작성자 : 문태환
	 * @내용 : 회원가입 화면 이동
	 * @return
	 */
	@RequestMapping("joinView.do")
	public String joinView() {

		return "join";
	}

	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용 : 마이페이지 이동
	 * @return
	 */
	@RequestMapping("MyPage.do")
	public ModelAndView MyPage(ModelAndView mv,
								@RequestParam("memNo") int memNo,HttpSession session) {

	   Member m =(Member)session.getAttribute("loginMember");
	    int wishlist = mpService.getWishListCount(memNo);
		int coupon = mpService.CouponListCount(m);
		int point = mpService.PointListCount(memNo);
		int orderCount1 = mpService.orderCount1(memNo);
		int orderCount2 = mpService.orderCount2(memNo);
		int orderCount3 = mpService.orderCount3(memNo);
		int orderCount4 = mpService.orderCount4(memNo);
		int orderCount5 = mpService.orderCount5(memNo);
		int orderCount6 = mpService.orderCount6(memNo);
		int orderCount7 = mpService.orderCount7(memNo);
		int resultPoint = mpService.resultPoint(memNo);
		
		
		
		mv.addObject("resultPoint",resultPoint);
		mv.addObject("orderCount1", orderCount1);
		mv.addObject("orderCount2", orderCount2);
		mv.addObject("orderCount3", orderCount3);
		mv.addObject("orderCount4", orderCount4);
		mv.addObject("orderCount5", orderCount5);
		mv.addObject("orderCount6", orderCount6);
		mv.addObject("orderCount7", orderCount7);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		
		mv.setViewName("mypage");
		
		return mv;
	}

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 아이디 찾기 화면
	 * @return
	 */
	@RequestMapping("findIdView.do")
	public String findIdView() {

		return "findId";
	}
	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	:비밀번호찾기 이동
	 * @return
	 */
	@RequestMapping("findpasswordView.do")
	public String findpwdView() {

		return "findpassword";
	}
	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 비밀번호 갱신 이동
	 * @return
	 */
	@RequestMapping("changePwdView")
	public String changePwdView(HttpServletRequest request,String memId) {

		request.setAttribute("memId",memId);

		return "changepassword";
	}


	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용 : 로그인
	 * @param id
	 * @param pwd
	 * @param response
	 * @throws IOException
	 */

	  @RequestMapping(value="login.do",method=RequestMethod.POST)
	  public void login(String id, String pwd, HttpServletResponse response,HttpSession session) throws IOException{

	  String msg = "";
	  PrintWriter out = response.getWriter();
	  Member m = mService.loginMember(id, pwd);
	  
//	  ArrayList<Cart> list = cService.selectList(m.getMemNo());
		  
//	  ArrayList<CouponMem> cmlist = mService.selectCmlist(m);
//	  Point pot = new Point();
//	  Pay pa = new Pay();	
//	  pa.setSumprice(2000);
//	  
//		pot.setMemno(m.getMemNo());
//		pot.setPt_price(pa.getSumprice());
	  
	  
	  int cpCount1 = mService.cpCount1(m);	
	  int cpCount2 = mService.cpCount2(m);	
	  int cpCount3 = mService.cpCount3(m);	
	  int cpCount4 = mService.cpCount4(m);	
	  
	  CouponMem com = new CouponMem();
	  com.setMemno(m.getMemNo());
	  
				 if(m.getMemSumMoney() >= 100000  && cpCount1 == 0) {
					 com.setCpno(2); 
						int result = mService.insertRateCp(com);  
				 }else if(m.getMemSumMoney() >= 300000 && cpCount2 ==0) {
					 com.setCpno(3); 
						int result = mService.insertRateCp(com);  
				 }else if(m.getMemSumMoney() >= 500000 && cpCount3==0) {
					 com.setCpno(4); 
						int result = mService.insertRateCp(com);  
				 }else if(m.getMemSumMoney() >= 700000 && cpCount4==0) {
					 com.setCpno(5); 
						int result = mService.insertRateCp(com);  
				 }
	
	  
		if (m != null  && bcryptPasswordEncoder.matches(pwd, m.getMemPwd() )) {
			
			  msg = "ok";
			  session.setAttribute("loginMember", m);
		  }else {
			  msg="fail";
		  }
		  out.print(msg);
	  }

	  /**
	 * @작성일  : 2020-04-02
	 * @작성자  : 문태환
	 * @내용 	: 로그아웃
	 * @param status
	 * @return
	 */
	@RequestMapping("logout.do")
	public String logout(SessionStatus status,HttpSession session) {

		  status.setComplete();
		  session.invalidate();
			return "redirect:home.do";
		}
	/**
	 * @작성일  : 2020. 4. 5.
	 * @작성자  : 문태환
	 * @내용 	: 모델메일 이동
	 * @return
	 */
	@RequestMapping("modelmailView.do")
	public String modelmailView() {

		return "modelmail";
	}

	@RequestMapping("mailsuccess")
	public String mailsuccess() {

		return "mailsuccess";
	}


	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 아이디 찾기
	 * @param response
	 * @param memName
	 * @param memSsn
	 * @throws IOException
	 */
	@RequestMapping("findId.do")
	public void findId(HttpServletResponse response, String memName,String memSsn) throws IOException {

		response.setContentType("application/json; charset=utf-8");
		JSONObject job = new JSONObject();
	     PrintWriter out = response.getWriter();
	     Member m = mService.findId(memName, memSsn);
	     if(m != null) {
	    	 job.put("memName",m.getMemName());
	    	 job.put("memId",m.getMemId());
	     	}else {
		    	 job.put("msg","error");
	     	}
	     		out.print(job);
	}

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 비밀번호 찾기 메일발송
	 * @param response
	 * @param memName
	 * @param memEmail
	 * @param memId
	 * @throws IOException
	 */
	@RequestMapping("findpassword.do")
	public void findpassword(HttpServletResponse response,

			String memName,String memEmail,String memId) throws IOException {

	        //먼저 아이디로 회원정보를 받아오고 가져온 데이터에서 email값을 비교하여 존재하지 않으면 인증메일 보내지 못함
	        Member m = mService.findpassword(memId,memName);

		     PrintWriter out = response.getWriter();

	        if(m==null || !m.getMemEmail().equals(memEmail))
	        {
	        	out.print("fail");
	        }

	                String host = "smtp.gmail.com";
	                String user = "finalot12345@gmail.com"; //자신의 계정
	                String password = "!!otot123456";//자신의 패스워드

	                //메일 받을 주소
	                String to_email = m.getMemEmail();

	                //SMTP 서버 정보를 설정한다.
	                Properties props = new Properties();
	                props.put("mail.smtp.host", host);
	                props.put("mail.smtp.port", 465);
	                props.put("mail.smtp.auth", "true");
	                props.put("mail.smtp.ssl.enable", "true");

	                //인증 번호 생성기
	                StringBuffer temp =new StringBuffer();
	                Random rnd = new Random();
	                for(int i=0;i<10;i++)
	                {
	                    int rIndex = rnd.nextInt(3);
	                    switch (rIndex) {
	                    case 0:
	                        // a-z
	                        temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                        break;
	                    case 1:
	                        // A-Z
	                        temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                        break;
	                    case 2:
	                        // 0-9
	                        temp.append((rnd.nextInt(10)));
	                        break;
	                    }
	                }
	                String AuthenticationKey = temp.toString();
	                System.out.println(AuthenticationKey);

	                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(user,password);
	                    }
	                });

	                //email 전송
	                try {
	                    MimeMessage msg = new MimeMessage(session);
	                    msg.setFrom(new InternetAddress(user, "Ot."));
	                    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));

	                    //메일 제목
	                    msg.setSubject("안녕하세요 Ot. 인증 메일입니다.");
	                    //메일 내용
	                    msg.setText("인증 번호는 :"+temp);

	                    Transport.send(msg);
	                    System.out.println("이메일 전송");

	                }catch (Exception e) {
	                    e.printStackTrace();
	                }
	               out.print(temp);
	    }

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 비밀번호 갱신
	 * @param memId
	 * @param firstpwd
	 * @return
	 */
	@RequestMapping(value="updatepwd.do", method=RequestMethod.POST )
	public String updatePwd(String memId ,String firstpwd) {

		firstpwd = bcryptPasswordEncoder.encode(firstpwd);	
		
	 int result = mService.updatePwd(memId,firstpwd);

	 if(result > 0) {
		 return "redirect:index.jsp";
	 }else {
		 return "changepassword";
	 }
	}
	
	

	/**
	 * @작성일 : 2020. 4. 2.
	 * @작성자 :이대윤
	 * @내용 : 프로덕트2 페이지 이동
	 * @param @return
	 * @return String
	 */
	@RequestMapping("dailyCheck.do")
	public ModelAndView dailyCheck(Member m ,HttpSession session, ModelAndView mv) {

		 m =  (Member)session.getAttribute("loginMember");

		ArrayList<Member> list = mService.dailyCheckList(m);

		System.out.println(list.toString());

		mv.addObject("list",list);
		mv.setViewName("dailyCheck");

		return mv;
	}


	/**
	 * @작성일  : 2020. 4. 3.
	 * @작성자  : 우예진
	 * @내용    : 아이디 중복검사
	 * @param response
	 * @param userId
	 * @throws IOException
	 */
	@RequestMapping(value="idDuplicate.do", method=RequestMethod.POST)
	public void idDuplicate(HttpServletResponse response ,String userId) throws IOException {
		PrintWriter out = response.getWriter();

		int result = mService.idDuplicate(userId);

		if(result > 0) {
			 out.print("no");
		 }else {
			out.print("ok");
		 }
	}



	/**
	 * @작성일  : 2020.04.04
	 * @작성자  : 우예진
	 * @내용    : 회원가입
	 * @param m
	 * @param model
	 * @param postcode1
	 * @param address1
	 * @param address2
	 * @param mobile1
	 * @param mobile2
	 * @param mobile3
	 * @param birth_year
	 * @param birth_month
	 * @param birth_day
	 * @return
	 */
	@RequestMapping(value="yinsert.do", method=RequestMethod.POST)
	public String insertMember(Member m, Model model,
								@RequestParam("postcode1") String postcode1,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2,
								@RequestParam("mobile1") String mobile1,
								@RequestParam("mobile2") String mobile2,
								@RequestParam("mobile3") String mobile3,
								@RequestParam("birth_year") String birth_year,
								@RequestParam("birth_month") String birth_month,
								@RequestParam("birth_day") String birth_day) {
		// 회원 가입 전 회원정보를 출력
		System.out.println(m);
		System.out.println(postcode1 + ", " + address1 + ", "+ address2);
		System.out.println(mobile1 + ", " + mobile2 + ", "+ mobile3);
		System.out.println(birth_year + ", " + birth_month + ", "+ birth_day);
	
		
		// System.out.println(bcryptPasswordEncoder.encode(m.getPwd()));

		String encPwd = bcryptPasswordEncoder.encode(m.getMemPwd());

		m.setMemPwd(encPwd);

		// 주소데이터들 ","를 구분자로 지정
		if(!postcode1.contentEquals("")) {
			m.setMemAddress(postcode1+","+address1+","+address2);
		}
		if(!mobile1.contentEquals("")) {
			m.setMemPhone(mobile1+"-"+mobile2+"-"+mobile3);
		}
		if(!birth_year.contentEquals("")) {
			m.setMemSsn(birth_year+","+birth_month+","+birth_day);
		}

		int result = mService.insertMember(m);

		if(result >0) {
			return "redirect:index.jsp";
		} else {
			model.addAttribute("msg","회원가입실패!!");
			return "common/errorPage";
		}

	}



	/**
	 * @작성일  : 2020. 4. 3.
	 * @작성자  : 문태환
	 * @내용 	: 출석체크 이벤트
	 * @param memNo
	 * @param tdDate
	 * @return
	 */
	@RequestMapping("insertdailyCheck.do")
	public String dailyCheck(int memNo,String tdDate) {

		int result = 0;

		int result2 = mService.dailyCheckCount(memNo,tdDate);
		if(result2 == 0) {
		 result = mService.dailyCheck(memNo,tdDate);
		}
		if(result > 0) {
			return "redirect:dailyCheck.do";
		}else {
			System.out.println("에러");
			return null;
		}
	}
	/**
	 * @작성일  : 2020. 4. 5.
	 * @작성자  : 문태환
	 * @내용 	: 출석체크 쿠폰발급
	 * @param memNo
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("couponInsert.do")
	public void couponInsert(int memNo ,String today, HttpServletResponse response) throws IOException {

		Member m = new Member();
		m.setMemNo(memNo);
		m.setTdDate(today);
		
		int result = mService.couponInsert(m);

		  PrintWriter out = response.getWriter();

		if(result > 0) {
			out.print("ok");
		}else {
			out.print("fail");
		}
	}
	

	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 신경섭
	 * @내용 : 회원정보 수정
	 * @param m
	 * @param model
	 * @param post
	 * @param addr1
	 * @param addr2
	 * @return
	 * String
	 */
	@RequestMapping(value="mUpdate.do", method=RequestMethod.POST)
	public String memberUpdate(Member m, Model model,
			 				   @RequestParam("pwd2") String pwd, 
							   @RequestParam("postcode1") String post,
							   @RequestParam("address1") String addr1,
							   @RequestParam("address2") String addr2,
							   @RequestParam("mobile1") String mobile1,
							   @RequestParam("mobile2") String mobile2,
							   @RequestParam("mobile3") String mobile3,
							   HttpSession session) {
		
		m = (Member)session.getAttribute("loginMember");
		
		m.setMemPwd(pwd);
		System.out.println(pwd);
		System.out.println("dsadsad :" +  m.getMemPwd());
		
	// 주소데이터들 ','를 구분자로 저장
		if(!post.contentEquals("")) {
			m.setMemAddress(post + "," + addr1 + "," + addr2);
		}
		
		if(!mobile1.contentEquals("")) {
			m.setMemPhone(mobile1 + "-" + mobile2 + "-" + mobile3);
		}
	
		String encPwd = bcryptPasswordEncoder.encode(m.getMemPwd());
		m.setMemPwd(encPwd);
		System.out.println("암호화된 비밀번호 : " + m.getMemPwd());
		
		System.out.println("주소 : " + post + "," + addr1 + "," + addr2);
		System.out.println("핸드폰번호 : " + mobile1 + "-" + mobile2 + "-" + mobile3);
		
		int result = mService.updateMember(m);
		
		if(result > 0) {
			model.addAttribute("loginMember", m);
			return "redirect:index.jsp";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "common/errorPage";
		}
	}
	
	/**
	 * @작성일 : 2020. 4. 9.
	 * @작성자 : 신경섭
	 * @내용 : 환불계좌정보 수정
	 * @param session
	 * @param model
	 * @param owner
	 * @param bank
	 * @param return_bank
	 * @return
	 * String
	 * @throws IOException 
	 */
	@RequestMapping(value="mUpdateAccount.do", method=RequestMethod.POST)
	public String updateAccount(HttpSession session, HttpServletResponse response, Model model,
								String check_password,
			   					@RequestParam("acc_depositor") String owner,
			   					@RequestParam("acc_bank") String bank,
			   					@RequestParam("acc_no") String return_bank) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		Member m = (Member)session.getAttribute("loginMember");
		
		
		m.setMemOwner(owner);
		m.setBank(bank);
		m.setReturnBank(return_bank);
		
//		System.out.println(check_password);
//		System.out.println(m.getMemPwd());
		
		if (m != null  && bcryptPasswordEncoder.matches(check_password, m.getMemPwd() )) {
			
			int result = mService.updateAccount(m);
			
			if(result > 0) {
				model.addAttribute("loginMember",m);
				return "close";
			} else {
				return "close2";
			}
		} else {
		out.println("<script>alert('비밀번호를 확인해주세요.'); location.href='mAccount.do'</script>");
		out.flush();
		return "mypage_member_account"; 
		}
	}

	@RequestMapping("mDelete.do")
	public String memberDelete(HttpSession session, String mId, Model model) {
		
		Member m = (Member)session.getAttribute("loginMember");
		
		System.out.println(m.getMemId());
		System.out.println(m.getMemNo());
		
		int result = mService.deleteMember(m);
		
		if(result > 0) {
			return "redirect:logout.do";
		} else {
			return "";
		}
	}
}
