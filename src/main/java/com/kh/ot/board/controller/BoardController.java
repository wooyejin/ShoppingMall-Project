package com.kh.ot.board.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.temporal.WeekFields;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ot.board.service.BoardService;
import com.kh.ot.board.vo.Board;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.board.vo.SearchCondition;
import com.kh.ot.common.Pagination;
import com.kh.ot.member.vo.Member;



@SessionAttributes("loginMember")
@Controller
public class BoardController extends HttpServlet {

   @Autowired
   private BoardService bService;
   
   
   /**
    * @작성일  : 2020.04.04
    * @작성자  : 우예진
    * @내용    : 상품불량 및 오배송접수 글쓰기 페이지 이동
    * @return
    */
   @RequestMapping("bad_product_write.do")
   public String bad_product_write() {

      return "bad_product_write";
   }


   /**
    * @작성일  : 2020.04.04
    * @작성자  : 우예진
    * @내용    : 상품불량 및 오배송접수 상품문의 상세페이지 이동
    * @return
    */
   @RequestMapping("bad_product_detail.do")
   public ModelAndView bad_product_detail(ModelAndView mv, int qna_no 
			/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage*/) {
		
		Board b = bService.selectBoard(qna_no);
		
		if(b!=null) {
			mv.addObject("b",b)
					/* .addObject("currentPage",currentPage) */
			.setViewName("bad_product_detail");
		} else {
			mv.addObject("msg","게시글 상세조회 실패")
			.setViewName("common/errorPage");
		}
		return mv;
	}

   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 상품불량 및 오배송접수 상세 비밀글(비밀글 타고들어갈때)
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("bad_product_detailView")
	   public ModelAndView bad_product_detailView(ModelAndView mv,int qna_no) {
		   
		   mv.addObject("qna_no", qna_no);
		   mv.setViewName("bad_product_password");

		   
		   return mv; 
	   }

   
   
   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 상품불량 및 오배송접수 화면 이동
	 * @return
	 */
 @RequestMapping("bad_product_update.do")
 public ModelAndView bad_product_update(ModelAndView mv, int qna_no) {

	
	Board b = bService.selectBoard(qna_no);
	
	if(b!=null) {
		mv.addObject("b",b)
				/* .addObject("currentPage",currentPage) */
		.setViewName("bad_product_update");
	} else {
		mv.addObject("msg","게시글 상세조회 실패")
		.setViewName("common/errorPage");
	}
   return mv;
}
 
  
  /**
	 * @작성일  : 2020. 4. 13.
	 * @작성자  : 우예진
	 * @내용    : 상품불량 및 오배송접수 업데이트 완료
	 * @return
	 */
@RequestMapping("bad_product_updateView.do")
public String bad_product_updateView(Board b,HttpServletRequest request) {

		int result = bService.UpdatePrBoard(b);
	
	if(result > 0) {
		return "redirect:bad_product_board.do";
	}else {
		return "에러다";
	}
		
}

	/**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 상품불량 및 오배송접수  게시물 삭제
	 * @param qna_no
	 * @param request
	 * @return
	 */
	@RequestMapping("bad_product_delete.do")
	public String bad_product_delete(int qna_no, HttpServletRequest request) {
		int result = bService.deletePrBoard(qna_no);

		if(result >0) {
			return "redirect:bad_product_board.do";
		} else {
			return "에러다";
		}
}

   /**
    * @작성일  : 2020.04.04
    * @작성자  : 우예진
    * @내용    : 상품불량 및 오배송접수 답변 페이지 이동
    * @return
    */
   @RequestMapping("bad_product_reply.do")
   public String bad_product_reply() {

      return "bad_product_reply";
   }

   /**
    * @작성일  : 2020.04.04
    * @작성자  : 우예진
    * @내용    : 상품불량 및 오배송접수 게시판 페이지 이동
    * @return
    */
   @RequestMapping("bad_product_board.do")
   public ModelAndView bad_product_board(ModelAndView mv,
		   @RequestParam(value="currentPage", 
		   required=false,defaultValue="1") int currentPage) { 

	   		System.out.println(currentPage);

	   		int b_cate_no = 6;

	   		int listCount = bService.getListCount(b_cate_no);

	   		System.out.println("listCount : " + listCount);

	   		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

	   		ArrayList<Board> list = bService.selectList(pi,b_cate_no);

	   		System.out.println("list:"+list);

	   		mv.addObject("list",list);
	   		mv.addObject("pi",pi);
	   		mv.setViewName("bad_product_board");

	   		return mv; 
   }
   
   
   /**
    * @작성일  : 2020. 4. 13
    * @작성자  : 우예진
    * @내용    : 상품불량 및 오배송접수 insert글쓰기
    * @param b
    * @param request
    * @param session
 	* @param uploadFile
 	* @return
 	*/
   @RequestMapping(value="bad_product_insert.do",method=RequestMethod.POST)
   	public String bad_product_insert(Board b,HttpServletRequest request,HttpSession session,
         @RequestParam(name="uploadFile",required=false) MultipartFile uploadFile) {
   
      
      Member m = (Member)session.getAttribute("loginMember");      
      
      b.setMem_no(m.getMemNo());
      b.setQna_writer(m.getMemId());
      System.out.println(uploadFile.getOriginalFilename());
      
      if(!uploadFile.getOriginalFilename().equals("")) {
         // 서버에 업로드
         // saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
         
         String renameFileName = saveFile(uploadFile,request);
         
         if(renameFileName != null) {
            b.setOriginalFileName(uploadFile.getOriginalFilename());// DB에는 파일명 저장
            b.setRenameFileName(renameFileName);
         }
         
      }      
      int result = bService.insertBoard(b);
        
      System.out.println(b);
      
      if(result >0) {
         return "redirect:bad_product_board.do";
      } else {
         return null;
      }
   }
   
   /**
    * @작성일  : 2020.04.13
    * @작성자  : 우예진
    * @내용    : 입금확인/입금자변경 검색 기능
    * @return
    */
	@RequestMapping("bp_search.do")
	public ModelAndView bp_search(ModelAndView mv, 
		   						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
		   						,String search_key,String search,String search_date) {
	int b_cate_no = 6;
	
	SearchCondition sc = new SearchCondition();
	
	if(search_key.equals("writer")) {
		sc.setWriter(search);
	} else if(search_key.equals("title")) {
		sc.setTitle(search);
	}
	
	if(search_date.equals("week")) {
		sc.setSearchDate(7);
	}else if(search_date.equals("month")) {
		sc.setSearchDate(30);
	}else if(search_date.equals("month3")) {
		sc.setSearchDate(90);
	}else if(search_date.equals("all")) {
		sc.setSearchDate(0);
	}
	
	sc.setB_cate_no(b_cate_no);
	
	int listCount = bService.SearchListCount(sc);
	
	PageInfo pi = sc.getPageInfo(currentPage, listCount);
	
	ArrayList<Board> list = bService.selectSearchList(pi,sc);
    
    System.out.println("list:"+list);
	
	  mv.addObject("list",list);
      mv.addObject("pi",pi);
      mv.setViewName("bad_product_board");
	
	return mv;
   }


   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 입금확인/입금자변경 답변정보
    * @return
    */
   @RequestMapping("bank_insert_reply.do")
   public String bank_insert_reply() {

      return "bank_insert_reply";
   }

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 입금확인/입금자변경 글쓰기
    * @return
    */
   @RequestMapping("bank_insert_write.do")
   public String bank_insert_write() {

      return "bank_insert_write";
   }
   
   /**
    * @작성일  : 2020. 4. 13
    * @작성자  : 우예진
    * @내용    : 입금확인/입금자변경 insert글쓰기
    * @param b
    * @param request
    * @param session
 	* @param uploadFile
 	* @return
 	*/
   @RequestMapping(value="bank_insert.do",method=RequestMethod.POST)
   	public String bank_insert(Board b,HttpServletRequest request,HttpSession session,
         @RequestParam(name="uploadFile",required=false) MultipartFile uploadFile) {
   
      
      Member m = (Member)session.getAttribute("loginMember");      
      
      b.setMem_no(m.getMemNo());
      b.setQna_writer(m.getMemId());
      System.out.println(uploadFile.getOriginalFilename());
      
      if(!uploadFile.getOriginalFilename().equals("")) {
         // 서버에 업로드
         // saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
         
         String renameFileName = saveFile(uploadFile,request);
         
         if(renameFileName != null) {
            b.setOriginalFileName(uploadFile.getOriginalFilename());// DB에는 파일명 저장
            b.setRenameFileName(renameFileName);
         }
         
      }      
      int result = bService.insertBoard(b);
        
      System.out.println(b);
      
      if(result >0) {
         return "redirect:bank_insert_board.do";
      } else {
         return null;
      }
   }


   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 입금확인/입금자변경 페이지 이동
    * @return
    */
   @RequestMapping("bank_insert_board.do")
   public ModelAndView bank_insert_board(ModelAndView mv,
		   @RequestParam(value="currentPage", 
		   required=false,defaultValue="1") int currentPage) { 

	   		System.out.println(currentPage);

	   		int b_cate_no = 5;

	   		int listCount = bService.getListCount(b_cate_no);

	   		System.out.println("listCount : " + listCount);

	   		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

	   		ArrayList<Board> list = bService.selectList(pi,b_cate_no);

	   		System.out.println("list:"+list);

	   		mv.addObject("list",list);
	   		mv.addObject("pi",pi);
	   		mv.setViewName("bank_insert_board");

	   		return mv; 
   }
   
   /**
    * @작성일  : 2020.04.13
    * @작성자  : 우예진
    * @내용    : 입금확인/입금자변경 검색 기능
    * @return
    */
	@RequestMapping("bi_search.do")
	public ModelAndView bi_search(ModelAndView mv, 
		   						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
		   						,String search_key,String search,String search_date) {
	int b_cate_no = 5;
	
	SearchCondition sc = new SearchCondition();
	
	if(search_key.equals("writer")) {
		sc.setWriter(search);
	} else if(search_key.equals("title")) {
		sc.setTitle(search);
	}
	
	if(search_date.equals("week")) {
		sc.setSearchDate(7);
	}else if(search_date.equals("month")) {
		sc.setSearchDate(30);
	}else if(search_date.equals("month3")) {
		sc.setSearchDate(90);
	}else if(search_date.equals("all")) {
		sc.setSearchDate(0);
	}
	
	sc.setB_cate_no(b_cate_no);
	
	int listCount = bService.SearchListCount(sc);
	
	PageInfo pi = sc.getPageInfo(currentPage, listCount);
	
	ArrayList<Board> list = bService.selectSearchList(pi,sc);
    
    System.out.println("list:"+list);
	
	  mv.addObject("list",list);
      mv.addObject("pi",pi);
      mv.setViewName("bank_insert_board");
	
	return mv;
   }
   
   
   
   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 입금확인/입금자변경 화면 이동
	 * @return
	 */
  @RequestMapping("bank_insert_update.do")
  public ModelAndView bank_insert_update(ModelAndView mv, int qna_no) {

	
	Board b = bService.selectBoard(qna_no);
	
	if(b!=null) {
		mv.addObject("b",b)
				/* .addObject("currentPage",currentPage) */
		.setViewName("bank_insert_update");
	} else {
		mv.addObject("msg","게시글 상세조회 실패")
		.setViewName("common/errorPage");
	}
    return mv;
}
  
   
   /**
 	 * @작성일  : 2020. 4. 13.
 	 * @작성자  : 우예진
 	 * @내용    : 입금확인/입금자변경 업데이트 완료
 	 * @return
 	 */
 @RequestMapping("bank_insert_updateView.do")
 public String bank_insert_updateView(Board b,HttpServletRequest request) {

		int result = bService.UpdatePrBoard(b);
	
	if(result > 0) {
		return "redirect:bank_insert_board.do";
	}else {
		return "에러다";
	}
		
}
 
 /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 입금확인/입금자변경  게시물 삭제
	 * @param qna_no
	 * @param request
	 * @return
	 */
	@RequestMapping("bank_insert_delete.do")
	public String bank_insert_delete(int qna_no, HttpServletRequest request) {
	int result = bService.deletePrBoard(qna_no);
	
	if(result >0) {
		return "redirect:bank_insert_board.do";
	} else {
		return "에러다";
	}
}
	
	/**
	    * @작성일  : 2020.04.05
	    * @작성자  : 우예진
	    * @내용    : 입금확인/입금자변경 상세정보
	    * @return
	    */
	   @RequestMapping("bank_insert_detail.do")
	   public ModelAndView bank_insert_detail(ModelAndView mv, int qna_no 
				/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage*/) {
			
			Board b = bService.selectBoard(qna_no);
			
			if(b!=null) {
				mv.addObject("b",b)
						/* .addObject("currentPage",currentPage) */
				.setViewName("bank_insert_detail");
			} else {
				mv.addObject("msg","게시글 상세조회 실패")
				.setViewName("common/errorPage");
			}
			return mv;
		}

	   
	   
	   /**
		 * @작성일  : 2020. 4. 13
		 * @작성자  : 우예진
		 * @내용    : 입금확인/입금자변경 상세 비밀글(비밀글 타고들어갈때)
		 * @param mv
		 * @param qna_no
		 * @return
		 */
		@RequestMapping("bank_insert_detailView")
		   public ModelAndView bank_insert_detailView(ModelAndView mv,int qna_no) {
			   
			   mv.addObject("qna_no", qna_no);
			   mv.setViewName("bank_insert_password");

			   
			   return mv; 
		   }


   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송문의 상세정보
    * @return
    */
   @RequestMapping("delivery_board_detail.do")
   public ModelAndView delivery_board_detail(ModelAndView mv, int qna_no 
			/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage*/) {
		
		Board b = bService.selectBoard(qna_no);
		
		if(b!=null) {
			mv.addObject("b",b)
					/* .addObject("currentPage",currentPage) */
			.setViewName("delivery_board_detail");
		} else {
			mv.addObject("msg","게시글 상세조회 실패")
			.setViewName("common/errorPage");
		}
		return mv;
	}
   
   /**
    * @작성일  : 2020.04.22
    * @작성자  : 이대윤
    * @내용    : 배송문의 상세정보 상품용
    * @return
    */
   @RequestMapping("delivery_board_detail1.do")
   public ModelAndView delivery_board_detail1(ModelAndView mv, int qna_no) {
		
		Board b = bService.selectBoard(qna_no);
		if(b!=null) {
			mv.addObject("b",b)
			.setViewName("delivery_board_detail1");
		} else {
			mv.addObject("msg","게시글 상세조회 실패")
			.setViewName("common/errorPage");
		}
		return mv;
	}

   
   
   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 배송문의 상세 비밀글(비밀글 타고들어갈때)
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("delivery_board_detailView")
	   public ModelAndView delivery_board_detailView(ModelAndView mv,int qna_no) {
		   
		   mv.addObject("qna_no", qna_no);
		   mv.setViewName("delivery_board_password");

		   
		   return mv; 
	   }
	
	/**
	 * @작성일  : 2020. 4. 22
	 * @작성자  : 이대윤
	 * @내용    : 배송문의 상세 비밀글(비밀글 타고들어갈때) (상품에서)
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("delivery_board_detailView1")
	   public ModelAndView delivery_board_detailView1(ModelAndView mv,int qna_no,int prdtNo) {
		   
		mv.addObject("prdtNo", prdtNo);
		   mv.addObject("qna_no", qna_no);
		   mv.setViewName("delivery_board_password1");

		   
		   return mv; 
	   }
	
	
	/**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 배송문의 업데이트 화면 이동
	 * @return
	 */
   @RequestMapping("delivery_board_update.do")
   public ModelAndView delivery_board_update(ModelAndView mv, int qna_no) {

	
	Board b = bService.selectBoard(qna_no);
	
	if(b!=null) {
		mv.addObject("b",b)
				/* .addObject("currentPage",currentPage) */
		.setViewName("delivery_board_update");
	} else {
		mv.addObject("msg","게시글 상세조회 실패")
		.setViewName("common/errorPage");
	}
     return mv;
 }
   @RequestMapping("delivery_board_update1.do")
   public ModelAndView delivery_board_update1(ModelAndView mv, int qna_no) {
	   
	   
	   Board b = bService.selectBoard(qna_no);
	   
	   if(b!=null) {
		   mv.addObject("b",b)
		   .setViewName("delivery_board_update1");
	   } else {
		   mv.addObject("msg","게시글 상세조회 실패")
		   .setViewName("common/errorPage");
	   }
	   return mv;
   }
  
   	/**
   	 * @작성일  : 2020. 4. 13.
   	 * @작성자  : 우예진
   	 * @내용    : 배송문의 업데이트 완료
   	 * @return
   	 */
   @RequestMapping("delivery_board_updateView.do")
   public String delivery_board_updateView(Board b,HttpServletRequest request) {

		int result = bService.UpdatePrBoard(b);
	
	if(result > 0) {
		return "redirect:delivery_board.do";
	}else {
		return "에러다";
	}
		
}
   @RequestMapping("delivery_board_updateView1.do")
   public String delivery_board_updateView1(Board b,HttpServletRequest request) {
	   
	   int result = bService.UpdatePrBoard(b);
	   
	   if(result > 0) {
		   return "redirect:http://localhost:8888/ot/delivery_board_detail1.do?qna_no="+b.getQna_no();
	   }else {
		   return "에러다";
	   }
	   
   }
   
   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 배송문의  게시물 삭제
	 * @param qna_no
	 * @param request
	 * @return
	 */
	@RequestMapping("delivery_board_delete.do")
	public String delivery_board_delete(int qna_no, HttpServletRequest request) {
	int result = bService.deletePrBoard(qna_no);
	
	if(result >0) {
		return "redirect:delivery_board.do";
	} else {
		return "에러다";
	}
}
	@RequestMapping("delivery_board_delete1.do")
	public String delivery_board_delete1(int qna_no,int prdtNo, HttpServletRequest request) {
		int result = bService.deletePrBoard(qna_no);
		
		if(result >0) {
			return "redirect:http://localhost:8888/ot/product_detail.do?product_detail="+prdtNo+"#qna";
		} else {
			return "에러다";
		}
	}
   

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송문의 답변 상세정보
    * @return
    */
   @RequestMapping("delivery_board_reply.do")
   public String delivery_board_reply() {

      return "delivery_board_reply";
   }



   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송문의 글쓰기
    * @return
    */
   @RequestMapping("delivery_board_write.do")
   public String delivery_board_write() {

      return "delivery_board_write";
   }
   
   
   /**
    * @작성일  : 2020. 4. 13
    * @작성자  : 우예진
    * @내용    : 배송후 반품교환 insert글쓰기
    * @param b
    * @param request
    * @param session
 	* @param uploadFile
 	* @return
 	*/
   @RequestMapping(value="delivery_board_insert.do",method=RequestMethod.POST)
   	public String delivery_board_insert(Board b,HttpServletRequest request,HttpSession session,
         @RequestParam(name="uploadFile",required=false) MultipartFile uploadFile) {
	   int result = 0;
	   int result2 = 0;
	   int prdtNo=0;
      int pNo =0;
      System.out.println("boardInsert:"+prdtNo);
      Member m = (Member)session.getAttribute("loginMember");      
      
      b.setMem_no(m.getMemNo());
      b.setQna_writer(m.getMemId());
      System.out.println(uploadFile.getOriginalFilename());
      
      if(!uploadFile.getOriginalFilename().equals("")) {
         // 서버에 업로드
         // saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
         
         String renameFileName = saveFile(uploadFile,request);
         
         if(renameFileName != null) {
            b.setOriginalFileName(uploadFile.getOriginalFilename());// DB에는 파일명 저장
            b.setRenameFileName(renameFileName);
         }
         
      }      
      
      if(prdtNo>0) {
    	  pNo = prdtNo;
    	  System.out.println(pNo);
      }
      
      if(pNo==0) {
    	result = bService.insertBoard(b);
      }else {
    	  b.setPrdt_code(pNo);
    	result2 = bService.insertBoard1(b);
      }
        
      System.out.println(b);
      
      if(result >0) {
         return "redirect:delivery_board.do";
      } else if(result2 >0){
         return "redirect:http://localhost:8888/ot/product_detail.do?product_detail="+prdtNo+"#qna";
      }else {
    	  return "오류다";
    	  
      }
      
   }
   

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송문의 페이지 이동
    * @return
    */
   @RequestMapping("delivery_board.do")
   public ModelAndView delivery_board(ModelAndView mv,
		   @RequestParam(value="currentPage", 
		   required=false,defaultValue="1") int currentPage) { 

	   		System.out.println(currentPage);

	   		int b_cate_no = 2;

	   		int listCount = bService.getListCount(b_cate_no);

	   		System.out.println("listCount : " + listCount);

	   		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

	   		ArrayList<Board> list = bService.selectList(pi,b_cate_no);

	   		System.out.println("list:"+list);

	   		mv.addObject("list",list);
	   		mv.addObject("pi",pi);
	   		mv.setViewName("delivery_board");

	   		return mv; 
   }
   
   
   /**
    * @작성일  : 2020.04.13
    * @작성자  : 우예진
    * @내용    : 배송문의 검색 기능
    * @return
    */
	@RequestMapping("de_search.do")
	public ModelAndView de_search(ModelAndView mv, 
		   						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
		   						,String search_key,String search,String search_date) {
	int b_cate_no = 2;
	
	SearchCondition sc = new SearchCondition();
	
	if(search_key.equals("writer")) {
		sc.setWriter(search);
	} else if(search_key.equals("title")) {
		sc.setTitle(search);
	}
	
	if(search_date.equals("week")) {
		sc.setSearchDate(7);
	}else if(search_date.equals("month")) {
		sc.setSearchDate(30);
	}else if(search_date.equals("month3")) {
		sc.setSearchDate(90);
	}else if(search_date.equals("all")) {
		sc.setSearchDate(0);
	}
	
	sc.setB_cate_no(b_cate_no);
	
	int listCount = bService.SearchListCount(sc);
	
	PageInfo pi = sc.getPageInfo(currentPage, listCount);
	
	ArrayList<Board> list = bService.selectSearchList(pi,sc);
    
    System.out.println("list:"+list);
	
	  mv.addObject("list",list);
      mv.addObject("pi",pi);
      mv.setViewName("delivery_board");
	
	return mv;
   }
   
   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송전 주문취소/변경 페이지 이동
    * @return
    */
   @RequestMapping("delivery_cancel.do")
   public ModelAndView delivery_cancel(ModelAndView mv,
		   @RequestParam(value="currentPage", 
		   required=false,defaultValue="1") int currentPage) { 

	   		System.out.println(currentPage);

	   		int b_cate_no = 3;

	   		int listCount = bService.getListCount(b_cate_no);

	   		System.out.println("listCount : " + listCount);

	   		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

	   		ArrayList<Board> list = bService.selectList(pi,b_cate_no);

	   		System.out.println("list:"+list);

	   		mv.addObject("list",list);
	   		mv.addObject("pi",pi);
	   		mv.setViewName("delivery_cancel");

	   		return mv; 
   }

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송전취소/변경 상세페이지
    * @return
    */
   @RequestMapping("delivery_cancel_detail.do")
   public ModelAndView delivery_cancel_detail(ModelAndView mv, int qna_no 
			/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage*/) {
		
		Board b = bService.selectBoard(qna_no);
		
		if(b!=null) {
			mv.addObject("b",b)
					/* .addObject("currentPage",currentPage) */
			.setViewName("delivery_cancel_detail");
		} else {
			mv.addObject("msg","게시글 상세조회 실패")
			.setViewName("common/errorPage");
		}
		return mv;
	}
   
   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 배송문의 상세 비밀글(비밀글 타고들어갈때)
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("delivery_cancel_detailView")
	   public ModelAndView delivery_cancel_detailView(ModelAndView mv,int qna_no) {
		   
		   mv.addObject("qna_no", qna_no);
		   mv.setViewName("delivery_cancel_password");

		   
		   return mv; 
	   }
   
   /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 배송전 주문취소/변경 업데이트 화면 이동
	 * @return
	 */
  @RequestMapping("delivery_cancel_update.do")
  public ModelAndView delivery_cancel_update(ModelAndView mv, int qna_no) {

	
	Board b = bService.selectBoard(qna_no);
	
	if(b!=null) {
		mv.addObject("b",b)
				/* .addObject("currentPage",currentPage) */
		.setViewName("delivery_cancel_update");
	} else {
		mv.addObject("msg","게시글 상세조회 실패")
		.setViewName("common/errorPage");
	}
    return mv;
}
   
	/**
  	 * @작성일  : 2020. 4. 13.
  	 * @작성자  : 우예진
  	 * @내용    : 배송전 주문취소/변경 업데이트 완료
  	 * @return
  	 */
  @RequestMapping("delivery_cancel_updateView.do")
  public String delivery_cancel_updateView(Board b,HttpServletRequest request) {

		int result = bService.UpdatePrBoard(b);
	
	if(result > 0) {
		return "redirect:delivery_cancel.do";
	}else {
		return "에러다";
	}
		
}
  
  /**
	 * @작성일  : 2020. 4. 13
	 * @작성자  : 우예진
	 * @내용    : 배송전 주문취소/변경 문의  게시물 삭제
	 * @param qna_no
	 * @param request
	 * @return
	 */
	@RequestMapping("delivery_cancel_delete.do")
	public String delivery_cancel_delete(int qna_no, HttpServletRequest request) {
	int result = bService.deletePrBoard(qna_no);
	
	if(result >0) {
		return "redirect:delivery_cancel.do";
	} else {
		return "에러다";
	}
}

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송전취소/변경 답변페이지
    * @return
    */
   @RequestMapping("delivery_cancel_reply.do")
   public String delivery_cancel_reply() {

      return "delivery_cancel_reply";
   }

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송전취소/변경 글쓰기페이지
    * @return
    */
   @RequestMapping("delivery_cancel_write.do")
   public String delivery_cancel_write() {

      return "delivery_cancel_write";
   }
   
   /**
    * @작성일  : 2020. 4. 13
    * @작성자  : 우예진
    * @내용    : 배송후 반품교환 insert글쓰기
    * @param b
    * @param request
    * @param session
 	* @param uploadFile
 	* @return
 	*/
   @RequestMapping(value="delivery_cancel_insert.do",method=RequestMethod.POST)
   	public String delivery_cancel_insert(Board b,HttpServletRequest request,HttpSession session,
         @RequestParam(name="uploadFile",required=false) MultipartFile uploadFile) {
   
      
      Member m = (Member)session.getAttribute("loginMember");      
      
      b.setMem_no(m.getMemNo());
      b.setQna_writer(m.getMemId());
      System.out.println(uploadFile.getOriginalFilename());
      
      if(!uploadFile.getOriginalFilename().equals("")) {
         // 서버에 업로드
         // saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
         
         String renameFileName = saveFile(uploadFile,request);
         
         if(renameFileName != null) {
            b.setOriginalFileName(uploadFile.getOriginalFilename());// DB에는 파일명 저장
            b.setRenameFileName(renameFileName);
         }
         
      }      
      int result = bService.insertBoard(b);
        
      System.out.println(b);
      
      if(result >0) {
         return "redirect:delivery_cancel.do";
      } else {
         return null;
      }
   }
   
   /**
    * @작성일  : 2020.04.13
    * @작성자  : 우예진
    * @내용    : 배송전 주문취소/변경 검색 기능
    * @return
    */
	@RequestMapping("dc_search.do")
	public ModelAndView dc_search(ModelAndView mv, 
		   						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
		   						,String search_key,String search,String search_date) {
	int b_cate_no = 3;
	
	SearchCondition sc = new SearchCondition();
	
	if(search_key.equals("writer")) {
		sc.setWriter(search);
	} else if(search_key.equals("title")) {
		sc.setTitle(search);
	}
	
	if(search_date.equals("week")) {
		sc.setSearchDate(7);
	}else if(search_date.equals("month")) {
		sc.setSearchDate(30);
	}else if(search_date.equals("month3")) {
		sc.setSearchDate(90);
	}else if(search_date.equals("all")) {
		sc.setSearchDate(0);
	}
	
	sc.setB_cate_no(b_cate_no);
	
	int listCount = bService.SearchListCount(sc);
	
	PageInfo pi = sc.getPageInfo(currentPage, listCount);
	
	ArrayList<Board> list = bService.selectSearchList(pi,sc);
    
    System.out.println("list:"+list);
	
	  mv.addObject("list",list);
      mv.addObject("pi",pi);
      mv.setViewName("delivery_cancel");
	
	return mv;
   }

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 상품문의 페이지 이동
    * @return
    */
   @RequestMapping("product_board.do")
   public ModelAndView product_board(ModelAndView mv,
							   @RequestParam(value="currentPage", 
							   required=false,defaultValue="1") int currentPage) { 
      
      System.out.println(currentPage);
	   
	  int b_cate_no = 1;
      
      int listCount = bService.getListCount(b_cate_no);
      
      System.out.println("listCount : " + listCount);
      
      PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
      
      ArrayList<Board> list = bService.selectList(pi,b_cate_no);
      
      System.out.println("list:"+list);
      
        mv.addObject("list",list);
        mv.addObject("pi",pi);
        mv.setViewName("product_board");
      
      return mv; 
   }
   
   /**
    * @작성일  : 2020.04.06
    * @작성자  : 우예진
    * @내용    : 상품문의 글쓰기 insert
    * @return
    */
   @RequestMapping(value="product_board_insert.do",method=RequestMethod.POST)
   public String product_board_insert(Board b,HttpServletRequest request,HttpSession session,
         @RequestParam(name="uploadFile",required=false) MultipartFile uploadFile) {
   
      
      Member m = (Member)session.getAttribute("loginMember");      
      
      b.setMem_no(m.getMemNo());
      b.setQna_writer(m.getMemId());
      System.out.println(uploadFile.getOriginalFilename());
      
      if(!uploadFile.getOriginalFilename().equals("")) {
         // 서버에 업로드
         // saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
         
         String renameFileName = saveFile(uploadFile,request);
         
         if(renameFileName != null) {
            b.setOriginalFileName(uploadFile.getOriginalFilename());// DB에는 파일명 저장
            b.setRenameFileName(renameFileName);
         }
         
      }      
      int result = bService.insertBoard(b);
        
      System.out.println(b);
      
      if(result >0) {
         return "redirect:product_board.do";
      } else {
         return null;
      }
   }
   
   
   
  


   /**
	 * @작성일  : 2020.04.05
	 * @작성자  : 우예진
	 * @내용    : 상품문의 상세페이지
	 * @return
	 */
	@RequestMapping("product_board_detail.do")
	public ModelAndView product_board_detail(ModelAndView mv, int qna_no 
			/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage*/) {
		
		Board b = bService.selectBoard(qna_no);
		
		if(b!=null) {
			mv.addObject("b",b)
					/* .addObject("currentPage",currentPage) */
			.setViewName("product_board_detail");
		} else {
			mv.addObject("msg","게시글 상세조회 실패")
			.setViewName("common/errorPage");
		}
		return mv;
	}
	


   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 상품문의 답변페이지
    * @return
    */
   @RequestMapping("product_board_reply.do")
   public String product_board_reply() {

      return "product_board_reply";
   }

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 상품문의 글쓰기페이지
    * @return
    */
   @RequestMapping("product_board_write.do")
   public String product_board_write() {

      return "product_board_write";
   }
   
   /**
 * @작성일  : 2020. 4. 8.
 * @작성자  : 우예진
 * @내용    : 상품문의 게시글 업데이트 화면 이동
 * @return
 */
@RequestMapping("product_board_update.do")
   public ModelAndView product_board_update(ModelAndView mv, int qna_no) {

	
	Board b = bService.selectBoard(qna_no);
	
	if(b!=null) {
		mv.addObject("b",b)
				/* .addObject("currentPage",currentPage) */
		.setViewName("product_board_update");
	} else {
		mv.addObject("msg","게시글 상세조회 실패")
		.setViewName("common/errorPage");
	}
      return mv;
  }



	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진 
	 * @내용    : 상품문의 게시글 업데이트 
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("product_board_updateView.do")
	public String product_board_updateView(Board b,HttpServletRequest request) {

			int result = bService.UpdatePrBoard(b);
		
		if(result > 0) {
			return "redirect:product_board.do";
		}else {
			return "에러다";
		}
			
	}
	

	
	/**
	 * @작성일  : 2020. 4. 12.
	 * @작성자  : 우예진
	 * @내용    : 상품문의 게시물 삭제
	 * @param qna_no
	 * @param request
	 * @return
	 */
	@RequestMapping("product_board_delete.do")
	public String product_board_delete(int qna_no, HttpServletRequest request) {
		int result = bService.deletePrBoard(qna_no);
		
		if(result >0) {
			return "redirect:product_board.do";
		} else {
			return "에러다";
		}
	}

	
	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진
	 * @내용    : 파일 삭제
	 * @param fileName
	 * @param request
	 */
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";
	
		File f = new File(savePath + "\\" + fileName);
		// webapp / resource / buploadFiles / 202003261111.png
	
		if(f.exists()) {
			f.delete();
	}
	
}
   
   
   /**
    * @작성일  : 2020.04.08
    * @작성자  : 우예진
    * @내용    : 상품문의 검색 기능
    * @return
    */
	@RequestMapping("pb_search.do")
   public ModelAndView pb_search(ModelAndView mv, 
		   						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
		   						,String search_key,String search,String search_date) {
	int b_cate_no = 1;
	
	SearchCondition sc = new SearchCondition();
	sc.setSearch_key(search_key);
	sc.setSearch(search);
	sc.setSearch_date(search_date);
	
	
	if(search_key.equals("writer")) {
		sc.setWriter(search);
	} else if(search_key.equals("title")) {
		sc.setTitle(search);
	}
	
	if(search_date.equals("week")) {
		sc.setSearchDate(7);
	}else if(search_date.equals("month")) {
		sc.setSearchDate(30);
	}else if(search_date.equals("month3")) {
		sc.setSearchDate(90);
	}else if(search_date.equals("all")) {
		sc.setSearchDate(0);
	}
	
	sc.setB_cate_no(b_cate_no);
	
	int listCount = bService.SearchListCount(sc);
	
	System.out.println(sc);
	PageInfo pi = sc.getPageInfo(currentPage, listCount);
	
	ArrayList<Board> list = bService.selectSearchList(pi,sc);
    
    System.out.println("list:"+list);
	
      mv.addObject("sc",sc);
	  mv.addObject("list",list);
      mv.addObject("pi",pi);
      mv.setViewName("product_board");
	
	return mv;
   }
	
	/**
	 * @작성일  : 2020. 4. 11.
	 * @작성자  : 우예진
	 * @내용    : 상품문의 상세 비밀글(비밀글 타고들어갈때)
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("product_board_detailView")
	   public ModelAndView product_board_detailView(ModelAndView mv,int qna_no) {
		   
		   mv.addObject("qna_no", qna_no);
		   mv.setViewName("product_board_password");

		   
		   return mv; 
	   }
	
	
   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송후교환/반품 페이지 이동
    * @return
    */
   @RequestMapping("product_change.do")
   public ModelAndView product_change(ModelAndView mv,
							   @RequestParam(value="currentPage", 
							   required=false,defaultValue="1") int currentPage) { 
      
      System.out.println(currentPage);
	   
	  int b_cate_no = 4;
      
      int listCount = bService.getListCount(b_cate_no);
      
      System.out.println("listCount : " + listCount);
      
      PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
      
      ArrayList<Board> list = bService.selectList(pi,b_cate_no);
      
      System.out.println("list:"+list);
      
        mv.addObject("list",list);
        mv.addObject("pi",pi);
        mv.setViewName("product_change");
      
      return mv; 
   }
  

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송후교환/반품 상세페이지
    * @return
    */
   @RequestMapping("product_change_detail.do")
   public ModelAndView product_change_detail(ModelAndView mv, int qna_no 
			/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage*/) {
		
		Board b = bService.selectBoard(qna_no);
		
		if(b!=null) {
			mv.addObject("b",b)
					/* .addObject("currentPage",currentPage) */
			.setViewName("product_change_detail");
		} else {
			mv.addObject("msg","게시글 상세조회 실패")
			.setViewName("common/errorPage");
		}
		return mv;
	}

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송후교환/반품 답변페이지
    * @return
    */
   @RequestMapping("product_change_reply.do")
   public String product_change_reply() {

      return "product_change_reply";
   }

   /**
    * @작성일  : 2020.04.05
    * @작성자  : 우예진
    * @내용    : 배송후교환/반품 글쓰기
    * @return
    */
   @RequestMapping("product_change_write.do")
   public String product_change_write() {

      return "product_change_write";
   }
   
   
   
   /**
    * @작성일  : 2020. 4. 12.
    * @작성자  : 우예진
    * @내용    : 배송후 반품교환 insert글쓰기
    * @param b
    * @param request
    * @param session
 	* @param uploadFile
 	* @return
 	*/
   @RequestMapping(value="product_change_insert.do",method=RequestMethod.POST)
   	public String product_change_insert(Board b,HttpServletRequest request,HttpSession session,
         @RequestParam(name="uploadFile",required=false) MultipartFile uploadFile) {
   
      
      Member m = (Member)session.getAttribute("loginMember");      
      
      b.setMem_no(m.getMemNo());
      b.setQna_writer(m.getMemId());
      System.out.println(uploadFile.getOriginalFilename());
      
      if(!uploadFile.getOriginalFilename().equals("")) {
         // 서버에 업로드
         // saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
         
         String renameFileName = saveFile(uploadFile,request);
         
         if(renameFileName != null) {
            b.setOriginalFileName(uploadFile.getOriginalFilename());// DB에는 파일명 저장
            b.setRenameFileName(renameFileName);
         }
         
      }      
      int result = bService.insertBoard(b);
        
      System.out.println(b);
      
      if(result >0) {
         return "redirect:product_change.do";
      } else {
         return null;
      }
   }

	/**
	 * @작성일  : 2020. 4. 8.
	 * @작성자  : 우예진
	 * @내용    : 배송후교환반품 게시글 업데이트 화면 이동
	 * @return
	 */
   @RequestMapping("product_change_update.do")
   public ModelAndView product_change_update(ModelAndView mv, int qna_no) {

	
	Board b = bService.selectBoard(qna_no);
	
	if(b!=null) {
		mv.addObject("b",b)
				/* .addObject("currentPage",currentPage) */
		.setViewName("product_change_update");
	} else {
		mv.addObject("msg","게시글 상세조회 실패")
		.setViewName("common/errorPage");
	}
     return mv;
 }

	/**
	 * @작성일  : 2020. 4. 12.
	 * @작성자  : 우예진
	 * @내용    : 배송후교환반품  게시물 삭제
	 * @param qna_no
	 * @param request
	 * @return
	 */
	@RequestMapping("product_change_delete.do")
	public String product_change_delete(int qna_no, HttpServletRequest request) {
	int result = bService.deletePrBoard(qna_no);
	
	if(result >0) {
		return "redirect:product_change.do";
	} else {
		return "에러다";
	}
}
   
   /**
    * @작성일  : 2020.04.12
    * @작성자  : 우예진
    * @내용    : 배송후상품교환  검색 기능
    * @return
    */
	@RequestMapping("pc_search.do")
	public ModelAndView pc_search(ModelAndView mv, 
		   						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
		   						,String search_key,String search,String search_date) {
	int b_cate_no = 4;
	
	SearchCondition sc = new SearchCondition();
	
	if(search_key.equals("writer")) {
		sc.setWriter(search);
	} else if(search_key.equals("title")) {
		sc.setTitle(search);
	}
	
	if(search_date.equals("week")) {
		sc.setSearchDate(7);
	}else if(search_date.equals("month")) {
		sc.setSearchDate(30);
	}else if(search_date.equals("month3")) {
		sc.setSearchDate(90);
	}else if(search_date.equals("all")) {
		sc.setSearchDate(0);
	}
	
	sc.setB_cate_no(b_cate_no);
	
	int listCount = bService.SearchListCount(sc);
	
	PageInfo pi = sc.getPageInfo(currentPage, listCount);
	
	ArrayList<Board> list = bService.selectSearchList(pi,sc);
    
    System.out.println("list:"+list);
	
	  mv.addObject("list",list);
      mv.addObject("pi",pi);
      mv.setViewName("product_change");
	
	return mv;
   }
	
	
	/**
	 * @작성일  : 2020. 4. 12
	 * @작성자  : 우예진
	 * @내용    : 배송후 교환반품  상세 비밀글(비밀글 타고들어갈때)
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("product_change_detailView")
	   public ModelAndView product_change_detailView(ModelAndView mv,int qna_no) {
		   
		   mv.addObject("qna_no", qna_no);
		   mv.setViewName("product_change_password");

		   
		   return mv; 
	   }
   
	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진 
	 * @내용    : 배송후교환반품 게시글 업데이트 
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("product_change_updateView.do")
	public String product_change_updateView(Board b,HttpServletRequest request) {

			int result = bService.UpdatePrBoard(b);
		
		if(result > 0) {
			return "redirect:product_change.do";
		}else {
			return "에러다";
		}
			
	}

   /**
 * @작성일  : 2020. 4. 9.
 * @작성자  : 우예진
 * @내용    : 비밀글 비밀번호 체크
 * @param response
 * @param qna_no
 * @param password
 * @throws IOException
 */
@RequestMapping("passwordCheck.do")
   public void passwordCheck(HttpServletResponse response,int qna_no, String password) throws IOException {
	   
	   PrintWriter out = response.getWriter();
	   
	   Board b = new Board();
	   
	   b.setQna_no(qna_no);
	   b.setQna_password(password);
	   
	   b = bService.passwordCheck(b);
	   if(b != null) {
		   out.print("ok");
	   }else {
		   out.print("fail");
	   }
	   
	   
	   
   }
@RequestMapping("passwordCheck1.do")
public void passwordCheck1(HttpServletResponse response,int qna_no, String password) throws IOException {
	
	PrintWriter out = response.getWriter();
	
	Board b = new Board();
	
	b.setQna_no(qna_no);
	b.setQna_password(password);
	
	b = bService.passwordCheck(b);
	if(b != null) {
		out.print("ok");
	}else {
		out.print("fail");
	}
	
	
	
}
   
   
   /**
    * @작성일  : 2020.04.06
    * @작성자  : 우예진
    * @내용    : 파일저장경로
    * @param file
    * @param request
    * @return
    */
   public String saveFile(MultipartFile file, HttpServletRequest request) {
      // 저장할 경로 설정et
      // 웹 서버 contextPath를 불러와서 폴더의 경로 찾음(webapp 하위의 resources)
      String root = request.getSession().getServletContext().getRealPath("resources");
      
      String savePath = root + "\\buploadFiles";
      
      File folder = new File(savePath);
      
      if(!folder.exists()) {
         folder.mkdir(); // 폴더가 없다면 생성해주세요
      }
      
      String originFileName = file.getOriginalFilename();
      
      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
      String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
               + originFileName.substring(originFileName.lastIndexOf(".")+1);
      
      String renamePath = folder + "\\" + renameFileName;
      
      try {
         file.transferTo(new File(renamePath));
      } catch (Exception e) {
         
         System.out.println("파일 전송 에러: " + e.getMessage());
      } 
      return renameFileName;
   }
   
}