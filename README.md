# Loginout-Auth-Api

- 구성도

<img width="300" height="200" alt="스크린샷 2022-11-06 오후 3 21 22" src="https://user-images.githubusercontent.com/26247241/200157292-2a688cad-1251-4b10-8709-83f131e91a48.png">

- 파일 레이아웃 | 인덱스 페이지 | 로그인/회원가입 확인 페이지

<img width="200" height="150" alt="0" src="https://user-images.githubusercontent.com/26247241/200050687-ae4649dd-1fdd-40e3-8411-e302b492f36a.png">  <img width="200" height="150" alt="1" src="https://user-images.githubusercontent.com/26247241/200050702-616fb9d0-b041-4830-b86a-02cc871e77f1.png">. <img width="200" height="150" alt="5" src="https://user-images.githubusercontent.com/26247241/200050743-4a8be8fd-3d70-48de-92fc-2d0716c6171f.png">

- 로그인 페이지 | 아이디 불일치 시 재로그인 필요 | 비밀번호 불일치 시 재로그인 필요

<img width="200" height="150" alt="2" src="https://user-images.githubusercontent.com/26247241/200050717-a35c3da9-b121-4081-a28a-1a19c6dd8dc2.png">  <img width="200" height="150" alt="2-1" src="https://user-images.githubusercontent.com/26247241/200050707-7e684baa-40b4-4158-ae18-d4eaf5e5b6ec.png">  <img width="200" height="150" alt="2-2" src="https://user-images.githubusercontent.com/26247241/200050712-10158ac4-0cdf-4c6b-a7c3-bbbbefbf9d58.png">

- 회원가입 페이지 | DB 내 아이디(PK) 존재함 | DB 내 핸드폰번호(PK) 존재함

<img width="200" height="150" alt="3" src="https://user-images.githubusercontent.com/26247241/200050729-de0d9773-ae2a-4694-9a1d-9c256bb9000a.png">  <img width="200" height="150" alt="3-1" src="https://user-images.githubusercontent.com/26247241/200050722-682f1880-4111-45e0-919a-ea9a710e76a9.png">  <img width="200" height="150" alt="3-2" src="https://user-images.githubusercontent.com/26247241/200050724-0b32054d-55e6-44cd-a672-ec5412e88817.png">

- 핸드폰 인증 확인 페이지 | 인증번호 불일치함 | 인증번호 일치함/회원가입 성공함

<img width="200" height="150" alt="4" src="https://user-images.githubusercontent.com/26247241/200050742-15d983bf-b48f-44dc-93de-a75b98a86182.png">  <img width="200" height="150" alt="4-1" src="https://user-images.githubusercontent.com/26247241/200050731-b336492e-7ec5-4d64-a0fb-f40c6489ee6d.png">  <img width="200" height="150" alt="4-2" src="https://user-images.githubusercontent.com/26247241/200050734-69341b94-ecb7-4d76-9e90-c442e00bffde.png">

- SMS 인증번호 전송 | 인증번호 불일치 시 DB 저장된 정보 삭제됨 | 회원가입 페이지 이동하여 새로운 정보 요구함

<img width="150" height="200" alt="스크린샷 2022-11-05 오전 4 01 28" src="https://user-images.githubusercontent.com/26247241/200054792-488a5662-2d2e-423a-be48-983b04d796ce.png">    <img width="250" height="200" alt="4-3" src="https://user-images.githubusercontent.com/26247241/200050736-cfd49c37-fb7a-44bf-81a0-abe26b65b9a7.png">     <img width="250" height="200" alt="4-4" src="https://user-images.githubusercontent.com/26247241/200050741-1f46b378-28ec-4c9e-aee1-414e50f879c9.png">


- timespent : 2016.06~08


- tech : Eclipse, ApacheTomcat, OracleSQLDeveloper, JAVA, JAVASCRIPT, SQL


- functions : 회원 가입, 로그인/로그아웃, 휴대폰 인증


- content : ID, Password, 휴대폰 번호를 기반으로 회원 정보 생성 과정 중 휴대포 인증하여 DB 저장함. 
DB 등록된 회원들 가운데 로그인/아웃 이용 가능하도록 구현함.
