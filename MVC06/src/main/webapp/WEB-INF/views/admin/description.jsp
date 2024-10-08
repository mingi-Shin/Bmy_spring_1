<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
	<title>template</title>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
   <style>
   	img {
   		width: 100%;
   	}
   	
   	hr {
   		color: red;
   	}
   	
   </style>
</head>
<body>

<div class="container">
	<jsp:include page="../common/header.jsp"></jsp:include>

  <h2>Spring MVC06</h2>
  <div class="card card-default">

    <div class="card-header" >card title</div>
    <div class="card-body" >
			<h1>MVC04부터 부가설명 </h1>
			
			<h2>XML에서 Java 클래스로 환경 설정을 옮기는 트렌드는 여러 가지 이유로 발생했습니다. 주요 이유는 다음과 같습니다:</h1>
			<p>
			1.	타입 안정성 (Type-Safety): XML은 순수한 문자열 기반의 설정 파일이기 때문에 컴파일 시점에 오류를 감지하기 어렵습니다. 반면에, Java 클래스를 사용하면 컴파일 시점에 잘못된 설정을 발견할 수 있어 더 안전합니다.<br>
			2.	코드 자동 완성 및 리팩토링: Java 클래스에서 설정을 작성하면 IDE의 자동 완성 기능을 활용할 수 있고, 리팩토링 작업도 수월해집니다. 반면, XML은 이런 편리함이 떨어집니다.<br>
			3.	유연성 및 표현력: Java는 프로그래밍 언어이기 때문에 로직을 기반으로 동적인 설정을 할 수 있습니다. 조건문, 반복문 등을 사용해 설정을 동적으로 조정하는 것이 가능해지며, 이는 XML에서 매우 어렵거나 불가능한 작업입니다.<br>
			4.	XML의 복잡성 감소: XML은 규모가 커지면 복잡해지고 가독성이 떨어집니다. 이를 해결하기 위해 Java 클래스로 설정을 이동하면 코드의 가독성이 좋아지고 유지보수가 쉬워집니다.<br>
			5.	스프링 부트와 같은 현대적인 프레임워크 도입: Spring Boot와 같은 현대적인 프레임워크는 기본적으로 XML이 아닌 Java 기반 설정을 권장합니다. 이는 프로젝트 설정이 더 직관적이고 간결해지는 효과를 가져옵니다. 또한, Spring Boot는 많은 자동 설정을 제공하여 설정에 신경 쓸 필요가 줄어듭니다.<br>
					이러한 이유들로 인해 기존 XML 기반의 설정이 점점 Java 클래스 기반 설정으로 대체되는 추세가 되었습니다.
			</p>
			<hr>
			
			<h2>Spring Security와 같은 보안 프레임워크는 여러 가지 유형의 공격으로부터 애플리케이션을 보호</h2>
			<p>
			1.	CSRF는 공격자가 사용자의 인증 정보를 도용하여, 사용자가 원하지 않는 요청을 애플리케이션에 보내는 공격 기법입니다. 이를 방지하기 위해 Spring Security는 CSRF 토큰을 활용해 요청의 유효성을 검증합니다. CSRF 보호를 통해 애플리케이션은 같은 사이트에서 생성된 요청만을 허용하고, 다른 사이트에서 생성된 악의적인 요청을 차단할 수 있습니다.<br>
			2.	XSS(Cross-Site Scripting): 공격자가 악성 스크립트를 웹 페이지에 삽입하여 사용자의 브라우저에서 실행되도록 유도하는 공격입니다. Spring Security는 콘텐츠 보안 정책(CSP) 및 입력값 필터링으로 이를 방어할 수 있습니다.<br>
			3.	SQL Injection: 공격자가 입력값을 조작해 SQL 쿼리를 변형시키는 공격입니다. Spring Security와 함께 사용하는 JPA나 MyBatis와 같은 ORM(Object-Relational Mapping) 도구들은 안전한 쿼리 생성을 지원하여 SQL Injection 방지를 돕습니다.<br>
			4.	인증 및 권한 부여 문제: 다른 사이트에서 해킹된 정보로 잘못된 요청을 보내는 공격이 성공하려면, 인증이 제대로 되어 있지 않거나, 사용자가 해당 요청을 보낼 권한이 없는 경우가 많습니다. Spring Security는 세밀한 인증(Authentication) 및 권한 부여(Authorization) 메커니즘을 제공하여, 올바르게 인증된 사용자만이 권한을 가지고 적절한 요청을 할 수 있도록 보장합니다.	
			</p>
			<hr>
			<h2>CSRF토큰 생성, 교환 과정</h2>
			<h3>서버에서 CSRF토큰 생성: </h3>
			<p>사용자가 특정 페이지를 요청하거나, 처음 사이트를 방문할 때 서버가 CSRF토큰을 생성: 이 토큰은 사용자의 세션과 연결되며 고유한 값을 가짐 </p>
			<h3>CSRF토큰을 클라이언트에 전달 </h3>
			<p>방법: 쿠키, HTML폼 내의 hidden필드, HTML의 meta태그</p>
			<p>클라이언트가 form 제출, AJAX요청시 서버로부터 받은 토큰을 요청에 포함하여 전달, 서버는 이를 비교하여 일치시 요청 처리  </p>
			<hr>
			
			<div>
				<img alt="spring web security" src="${contextPath }/resources/images/스프1탄_48.png" >
			</div>
			<div>
				<p>1. xhr: XMLHttpRequest객체, 브라우저가 서버와 비동기적으로 데이터를 주고받기 위해 사용하는 기본적인 HTTP요청 객체 </p>
				<p>2. enctype으로 form을 넘길때는 URL쿼리스트링으로 토큰을 넘겨주어야 한다. </p>
				<p>2. get방식은 CSRF검사를 하지 않는다.  </p>
			</div>
			<hr>
			<div>
				<h2>비밀번호 암호화 </h2>
				<img alt="spring web security" src="${contextPath }/resources/images/스프1탄_53.png">
				패스워드 암호화 시켜주기 (스프링 내부 API 활용)
			</div>
			
			<hr>
			<div>
				<h2>resultMap 사용법</h2>
				<img alt="spring web security" src="${contextPath }/resources/images/스프1탄_54.png" >
			</div>
			<div>
				<p>1. DB에서 넘어오는 Column을 entity의 property에 맵핑하는 모습  </p>
				<p>2. 결과가 arrayList이기 때문에 collection 활용   </p>
			</div>
			
			<hr>
			<div>
				<h2>UserDetails 인터페이스의 구현: extends User </h2>
				<img alt="spring web security" src="${contextPath }/resources/images/스프1탄_60.png">
			</div>
			<div>
				<p>1. UserDetails인터페이스의 구현체인 User클래스를 상속한 MemberUsers클래스 객체 생성</p>
			</div>
			
			<hr>
			<div>
				<h2></h2>
				<img alt="spring web security" src="${contextPath }/resources/images/스프1탄_61.png">
			</div>
			<div>
				<p></p>
			</div>
			
			<hr>
			<div>
				<h2>인증처리과정</h2>
				<img alt="spring web security" src="${contextPath }/resources/images/스프1탄_62.png">
			</div>
			<div>
				<h3>Security context란?</h3>
				<p>1. Spring Security에서 현재 인증된 사용자에 대한 정보를 담고있는 컨테이너 </p>
				<p>2. SecurityContextHolder 를 통해 접근가능하며, 사용자가 어플리케이션에 로그인 후 생성됨  </p>
				<p>3. 이 컨텍스트는 현재 사용자의 인증정보를 포함하는 Authentication 객체를 가지고 있음 </p>
			</div>
			<div>
				<h2> UserDetailsService가 사용자 정보를 가져오고, UserDetails가 그 사용자 정보를 담는 객체</h2>
				<p><strong>UserDetailsService인터페이스의 주요 메서드는 단 하나: loadUserByUsername(String username): 이 메서드는 주어진 username을 기반으로 데이터베이스나 다른 저장소에서 사용자의 세부 정보를 검색하여 반환: 객체는 UserDetails 타입</strong></p>
				<p><storng>AuthenticationManagerBuilder는 Spring Security의 AuthenticationManager(인증 매니저)를 설정하는 빌더 클래스 </storng></p>
				
				<p>1. Spring Security에서 인증 요청이 들어오면, UsernamePasswordAuthenticationFilter (스프링 내부동작)가 사용자의 username과 password를 추출</p>
				<h3> AuthenticationManager가 UserDetailsService 호출</h3>
				<p>2. Spring Security는 내부적으로 AuthenticationManager를 통해 인증을 수행하는데, 이때 AuthenticationManagerBuilder에 설정된 UserDetailsService가 호출됨</p>
				<p>3. UserDetailsService의 loadUserByUsername() 메서드가 호출됩니다. 이 메서드는 주어진 username을 사용하여 데이터베이스 또는 다른 저장소에서 사용자의 정보를 가져옴.  그리고 이 사용자 정보를 담은 UserDetails 객체를 반환합니다.</p>
				<p>4. UserDetails 객체는 Spring Security가 사용자 인증을 처리하는 데 필요한 정보(사용자 이름, 비밀번호, 권한 등)를 제공</p>
				<p>5. 사용자가 입력한 비밀번호는 설정된 **PasswordEncoder**를 사용하여 암호화된 후, UserDetails 객체에서 반환된 암호화된 비밀번호와 비교됩</p>
				<p>6. 인증이 성공하면 UserDetails 객체는 인증된 사용자 정보를 포함한 세션에 저장되며, 이후 Spring Security의 보안 컨텍스트에서 사용자 정보를 사용할 수 있게 됩니다.</p>
			</div>
			
			<hr>
			<div>
				<h3>왜 여전히 session이 필요한가?</h3>
				<p>세션이 없다면 각 요청마다 인증을 다시 받아야 하므로, 상태 유지를 위해 세션이 필수적입니다.</p>
				<p>JSP에서 인증 정보를 가져오는 방식은 세션에 저장된 SecurityContext에 의존하므로 세션이 여전히 필요합니다.</p>
			</div>
			
			<hr>
			<div>
				<img alt="spring01_63" src="${contextPath }/resources/images/스프1탄_63.png">			
			</div>
			<div>
				<h2>새로운 세션 생성 과정</h2>
				<p>	•	currentAuth.getCredentials(): 기존 사용자(현재 인증된 사용자)의 자격 증명 (비밀번호 등) 정보를 반환합니다.</p>
				<p>	•	newPrincipal.getAuthorities(): 새로운 사용자(인증을 갱신할 사용자)의 권한(Role) 정보를 반환합니다.</p>
				<h3>UsernamePasswordAuthenticationToken 생성자에 전달되는 세 가지 매개변수는 아래와 같습니다</h3>
				<p>Principal (수정된 후의 현재 로그인된 사용자 정보)</p>
				<p>Credentials (자격 증명, 비밀번호 등):<br>
						<strong>만약</strong> 비밀번호를 수정하게 되는 경우, currentAuth가 아니라 newPrincipal에서 불러오는게 맞다.<br>
						하지만 보안상 문제(세션하이재킹), 시스템 문제등을 고려했을 때 재로그인을 권하는게 더 옳다고 생각한다. 
				</p>
				<p>Authorities (권한)</p>
				<h3>Spring Security의 동작 방식에서 세션과의 관계??</h3>
				<p>SecurityContext: <br>
					• SecurityContext는 현재 인증된 사용자의 정보를 담고있는 컨텍스트이다. 이 컨텍스트에 Authentication 객체가 저장되구요.<br>
					• UsernamePasswordAuthenticationToken은 이 Authentication 객체로 사용됩니다. 
				</p>
				<p>HttpSession: <br>
					•	Spring Security는 기본적으로 SecurityContext를 HttpSession에 저장합니다.<br>
					• 인증에 성공하면 SecurityContext는 세션에 저장되고, 요청마다 인증을 다시 수행할 필요없이 계속 인증상태를 유지하게 되는 거에요. <br>
					• 이게 Session을 쓰는 이유구요. 요청마다 인증을 수행할 필요없이 계속 유지하기 위해!!
				</p>
				<p>따라서 context에서 Authentication 객체를 불러오거나, HttpSession을 통해 Attribute로 가져올 수 있지요.</p>
				<p><strong>Details에는 Member entity가 담기는게 아니라,</strong><br>
						1.	IP 주소: 사용자가 인증 요청을 보낸 클라이언트의 IP 주소.<br>
						2.	세션 정보: 인증 세션에 대한 정보, 예를 들어 세션 ID.<br>
						3.	요청 정보: 인증 요청에 관련된 HTTP 요청 정보, 예를 들어 요청 헤더나 파라미터.<br>
						4.	사용자 에이전트: 클라이언트의 사용자 에이전트 문자열, 즉 브라우저 정보.<br>
						5.	기타 메타데이터: 인증 과정에서 필요할 수 있는 다른 관련 정보.<br> 
					가 담깁니다.
				</p>
			</div>			
			
    </div>
    <div class="card-footer">card foot</div>
  </div>
</div>

</body>
</html>