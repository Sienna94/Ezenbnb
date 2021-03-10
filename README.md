# :airplane: Ezenbnb

> 에어비앤비 클론 팀프로젝트



## 1. 제작 기간 & 참여인원

- 2021.01.21 - 2021.01.31
- 팀 프로젝트 : 박진혁, 이동수, 장서정, 이한솔



## 2. 사용기술

**Back-end**

- Java
- Eclipse Mar
- JavaScript
- JQuery
- JSP
- mybatis
- Oracle11g
- ApacheTomcat 9.0

**Front-end**

- HTML5
- CSS3
- Bootstrap



## 3. ERD 설계

![exerd_ezenbnb](https://user-images.githubusercontent.com/69448123/109947421-a40ffe80-7d1c-11eb-8920-d50ecd0f297e.png)



## 4. 핵심 기능

담당 파트 : 메인페이지 레이아웃, 로그인과 회원가입 페이지, 호스트 페이지, 게스트 페이지 (전과 마찬가지로 담당 파트의 백&프론트 모두)

**4.1. 호스트 페이지**

- 숙소 등록

- 예약 요청 수락, 거절

  ![호스트메인](https://user-images.githubusercontent.com/69448123/110571957-d8137580-819b-11eb-8d1b-847a3804c1be.png)
  ![승인 내역](https://user-images.githubusercontent.com/69448123/110571967-da75cf80-819b-11eb-9c21-b1cf67e1d013.png)

<br>

**4.2. 게스트 페이지**

- 좋아요한 숙소 리스트(검색시의 숙소리스트에 좋아요 여부에 따라 하트 색이 변하는 것도 했어야 했는데)

  ![게스트3](https://user-images.githubusercontent.com/69448123/110571825-8ff45300-819b-11eb-9062-79367dbd85b9.png)

- 예약 내역

  ![게스트1](https://user-images.githubusercontent.com/69448123/110571867-a1d5f600-819b-11eb-8aa0-7a25661a86cf.png)

  

호스트 페이지에서는 숙소 등록과 요청 수락, 게스트 페이지에서는 좋아요 기능, 마이페이지에서 회원정보 기능이 핵심 기능입니다.



## 5. 트러블 슈팅

**5.1. 숙소 등록시 이미지 서버에 저장**

> 전 프로젝트인 Oopshoes에서 상품 등록시 프로젝트 내부 폴더에 있는 이미지만 가능. **숙소 등록시 해당 숙소의 이미지가 서버에 저장되도록 해야 했음**
>
> - 이전 프로젝트: 내부 폴더의 이미지 경로 string만 저장
>
> **MultipartRequest를 통해 파일을 업로드함** (COS 라이브러리 사용) :pushpin: [코드 확인](https://github.com/Sienna94/Ezenbnb/blob/159928cfdbc0844a5c9d3efa91c8397149e580a8/src/com/house/service/HouseInsertService.java#L39)
>
> - [참고 포스팅 : 이론](https://gunbin91.github.io/jsp/2019/05/28/jsp_11_file.html)
> - [참고 포스팅 : 라이브러리 설치 및 사용 코드](https://sesok808.tistory.com/326)

**5.2. 숙소 등록시 이미지를 미리보기**

>이 또한 전 프로젝트에서 상품 등록시에 이미지를 확인할 수 없었던 것을 보완.
>
>- 서부 내부 이미지 사용만 고려했음. 따라서 서버에 이미지를 올린 이후, 썸네일로 이미지를 보여주는 것을 생각~~낭비의 지름길~~. **이미지를 서버에 올리기 전 보여주는 것을 생각해야했음(페이지 이동 없이)**
>
>**JavaScript**사용으로 해결 :pushpin:[코드확인](https://github.com/Sienna94/Ezenbnb/blob/159928cfdbc0844a5c9d3efa91c8397149e580a8/WebContent/host/houseinsert.jsp#L135)
>
>
>
>![등록하기1](https://user-images.githubusercontent.com/69448123/110571224-9a621d00-819a-11eb-8d15-787d6d22992a.png)<br>
>![등록하기2](https://user-images.githubusercontent.com/69448123/110571237-9df5a400-819a-11eb-9307-6472cb50e32d.png)<br>
>![등록하기3](https://user-images.githubusercontent.com/69448123/110571243-9fbf6780-819a-11eb-99ad-ae68d9700f95.png)<br>
>
>- 쇼핑몰 프로젝트 상품등록 으로 검색 후 해결책 찾음.



## 6. 회고/ 느낀 점

아쉬운 부분이  많은 프로젝트였다. 일단 기간 자체도 지난 팀프로젝트보다 월등히 짧았고, 도중에 팀원 한분이 취업이 돼 빠지게 되셨다. 다들 자기 일처럼 기뻐했지만 곧 멘붕에 빠졌다. 코어 중의 코어 멤버가 빠져버렸기 때문. ~~그래도 메인페이지 레이아웃까지 만들어주시고...~~

6.1. 실시간 채팅

> 에어비앤비의 핵심기능이라고 할 수 있는 **실시간 채팅 기능**을 구현하지 못했다. 에어비앤비에서는 호스트에게 게스트가 먼저 연락을 취하고, 숙소에 관련한 질문을 하고, 이후 예약을 진행하는 것이 일반적이다. 따라서 동시 채팅이 가능해야 한다. 
>
> 웹소켓을 이용하면 가능할 것이라고 생각했지만 하지 못했다. 단순한 익명 채팅은 어렵지 않게 참고 자료를 찾을 수 있다. 그러나 실시간으로 채팅 내용, 수신자, 발신자를 구분하고 DB에 저장할 방법을 찾지 못함.
>
> - 임시 방편으로 채팅처럼 보이는 게시판을 만듬
>
>   ![채팅게시판](https://user-images.githubusercontent.com/69448123/110571133-6edf3280-819a-11eb-9881-8880b8a4e6cb.png)



6.2. 예약 가능 날짜 설정 오류

> 숙소 등록 시 예약이 가능한 날짜와 불가한 날짜를 설정,  숙소 예약시 반영되도록 했어야 했다. 



6.3. 프로젝트 사이즈 조절 실패 및 미완성

> 첫 팀프로젝트의 팀원들과 다시 같은 팀을 하게 됨. 이전 프로젝트보다 사이즈를 키우고, 더 많은 기능을 구현할 수 있는 프로젝트를 목적으로 에어비앤비를 클론하는 것으로 결정. 그러나 예상치 못한 팀원 이탈과 멘탈관리 문제로 미완성에 그침.
>
> 굳이 변명을 해보자! : 예상대로 진행됐다고 하면, 로그인 및 회원가입 등의 非핵심 기능의 경우 이전 프로젝트인 Oopshoes를 적극 활용하고자 했다. **예약 및 실시간 채팅, 지도 API 사용 등에 집중하고자 한 것.** ~~But...인생은 뜻대로 되지 않는다.~~~



6.4. 커밋시 지속적 충돌 문제 발생

> 커밋시 계속해서 **mybatis-config.xml**파일에서 싱크 문제가 발생. 싱크로나이즈 or 파일 삭제 후 다시 풀을 당겨도 남아있는 깃캐시 때문에 충돌 문제 발생. 팀원 각자가 담당파트의 mapper와 dto를 계속 추가하면서 진행했기에, 따로 해당 파일을 메모장에 저장해두고 일일히 비교하면서 추가하는 등 비효율적이었다.
>
> - 커밋 전 pull을 할 때, 싱크 문제가 발생. 싱크 후 진행해도 같은 오류 발생
> - 해당 파일을 ignore하고 계속 진행했지만 결국 나중에 다시 다 비교하면서 추가해야 했음.
>
> - 모두가 동일 branch하나로 작업해서 일어난 문제인 것 같은데 아직 뚜렷한 이유를 생각해내지 못함. 



6.5. 로컬 서버에 그친 것, 스프링 사용x, 로그인 외부 API 사용x
