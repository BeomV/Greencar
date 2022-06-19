# Greencar
 [Spring] Greencar

#User 


MariaDB, JSP, html, CSS, SPRING

# 사용자 페이지
 index - 상품 목록 selectlist를 사용하여 carinfo 테이블에서 정보들을 가져와서 타이틀,내용등 표시
 login - DB 연동 로그인 기능 구현
 register - DB 연동 회원 가입 기능 구현 , 카카오 API를 활용하여 주소 검색, 등록 기능 구현
 
 # 관리자 페이지
 
 product - 상품 등록 페이지, insert, DAO,DTO 사용 Interface Implements 사용하여  간편하게 유지보수 가능하게 구현 카카오 주소 API 기능 추가해 차량 위치 DB에 등록
 productm - selectlist를 사용 차량 정보들을 ForEach 사용하여 나열, 카테고리 별로 필터 기능 구현 Select, Where 사용하여 차량 번호로 검색 기능 구현
            href를 사용해 @RequestParam("n") Primary KEY 사용해서 해당 차량 상세 페이지로 이동 
 view - 이전 페이지에서 차량 번호로 페이지 이동하여 해당 Value를 가져와서 나열 수정/삭제 버튼 구현
        삭제 - 버튼 클릭 시 /Delete로 맵핑되어 해당 Value 삭제 기능 구현
        
 modify- view.jsp에서 넘어온 차량 정보를 Update를 통해 수정 가능       
        
 
 
