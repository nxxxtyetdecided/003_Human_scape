
<div  align="center">

  

# Wanted Backend Pre Onboarding Project 003

  

<img  width="400"  src="https://user-images.githubusercontent.com/72593394/167660736-32c28f81-39f0-43d2-9797-6e74b73b53a7.jpg">

  

</div>

  

## 목차

- [D팀 멤버 소개](#-team-d-member)

- [개발 기간](#-개발기간)

- [프로젝트 분석](#-프로젝트-분석)

- [ERD](#-erd)

- [프로젝트 후기](#-프로젝트-후기)

- [배포](#-배포)

- [API 명세서](#-api-명세서)

- [기술 스택](#-사용된-기술-스택)

  

<div  align="center">

  

## 👨‍👨‍👦‍👦 Team "D" member

|권상현|김석재|류성훈|정미정|

|:------:|:------:|:------:|:------:|

|<img  src="https://avatars.githubusercontent.com/u/39396492?v=4"  width="200"/> | <img  src="https://avatars.githubusercontent.com/u/86823305?v=4"  width="200"/> | <img  src="https://avatars.githubusercontent.com/u/72593394?v=4"  width="200"/> |<img  src="https://avatars.githubusercontent.com/u/86827063?v=4"  width="200"/> |

|[Github](https://github.com/gshduet)|[Github](https://github.com/Cloudblack)|[Github](https://github.com/rsh1994)|[Github](https://github.com/nxxxtyetdecided)|

<br>

  
  

|<img  height="200"  width="380"  src="https://retaintechnologies.com/wp-content/uploads/2020/04/Project-Management-Mantenimiento-1.jpg">|<img  height="200"  width="330"  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGElLjafMUhHglmqwh9lRh_sVzOCQyBiPNfQ&usqp=CAU">|

|:------:|:------:|

|💻 [**Team work**](https://mature-citron-a04.notion.site/Wanted_Pre_Onboarding-6af013e2bb3b43739cebc641de4ff558) | 📒 [**Project page**](https://mature-citron-a04.notion.site/3-95c29457557b4984a4c00ab9b1bb3769)|

|공지사항, 컨벤션 공유 등<br> 우리 팀을 위한 룰 |요구사항 분석, 정보 공유 및<br> 원할한 프로젝트를 위해 사용|

  
</div>

  

# 💻 Project

### 💭 프로젝트 설명 & 분석

- 임상시험정보를 수집하는 batch task를 작성하고, 주어진 조건에 맞는 데이터들을 보여주는 API를 만든다.

- 조건

	- [x] 최근 일주일내에 업데이트(변경사항이 있는) 된 임상정보 리스트

	- [x] pagination 기능 (offset, limit 으로 구현)

	- [x] 문서화된 API명세	

	(❌ 주의사항)
	- [x] 개발에 사용된 key값이 레포지토리에 올라가서는 안됨
	- [x] 팀원간 동일한 Git branch전략, commit단위 사용


## [API 배포 Link](http://52.78.198.214/api/research)

## ⌛ 개발기간
<h4>2022/05/10 ~ 2022/05/12</h4>


## 🚥 ERD
<img width="400"  src="https://user-images.githubusercontent.com/72593394/168226135-630e61ca-1dc8-47bb-9938-ef6a9b312186.png">
  

## 🎭 프로젝트 후기

<details>

<summary>권상현</summary>

<div  markdown="1">

  

- 여기에 쓰세요

</div>

</details>

  

<details>

<summary>김석재</summary>

<div  markdown="1">

  

- 여기에 쓰세요

</div>

</details>

  

<details>

<summary>류성훈</summary>

<div  markdown="1">

  

- 여기에 쓰세요

</div>

</details>

  

<details>

<summary>정미정</summary>

<div  markdown="1">

  

- 여기에 쓰세요

</div>

</details>

  

## 🔥 배포

프로젝트를 Docker를 이용해 컨테이너화 해 EC2에 배포했습니다

[API Link](http://52.78.198.214/api/research)

  
  

## 🎫 API 명세서

 [Swagger(API문서) Link](http://52.78.198.214/swagger/)
<details>

<summary>API 실행 가이드</summary>

- Read
	```
	curl http://52.78.198.214/api/research/C130012
	```

- List
	```
	curl http://52.78.198.214/api/research
	```
	
- Search
		```
		curl http://52.78.198.214/api/research?agency=%EA%B3%A0%EB%A0%A4%EB%8C%80
		```	

<div  markdown="1">

<b>상세 설명</b>

-  [GET] <b>/research</b>
  임상정보 데이터 리스트 <b>조회,검색</b> 기능
	  - List 조회: [Try it out] 버튼 클릭 후 아무 입력 없이 [Execute] 클릭
		<img width="300"  src="https://user-	images.githubusercontent.com/72593394/168235900-f045f906-892f-40e6-b517-b40f373bce73.png">
			데이터 List 조회 완료
	  - 특정 정보로 검색 : [Try it out]클릭 후 원하는 정보를 입력 후 [Exectute]
		  - ex) agency = 고려대
			<img width="200"  src="https://user-images.githubusercontent.com/72593394/168236832-99955257-79ab-4ec9-a1c2-ddf54848b65f.png">
			[execute]
			
			<img width="200"  src="https://user-images.githubusercontent.com/72593394/168237177-1d14fb9f-a4d7-409f-90ca-f0123817ae3d.png">
			
			agency에 '고려대'가 포함된 데이터들의 리스트가 조회됩니다.
			
	  - pagination
			<img width="150"  src="https://user-images.githubusercontent.com/72593394/168237526-32cd9eec-ecc2-494e-a8c8-42242c4193c4.png">

		  - 원하는 offset, limit값을 넣어 pagination기능을 적용하여 데이터를 조회할 수 있습니다.
			


 -  [GET] <b>/research/{task_id}</b>
	임상정보 상세데이터 가져오기(detail)
	- 원하는 과제번호(task_id)를 파라미터로 넣어 [Execute]합니다.
		- ex) task_id = C130012
			<img width="200"  src="https://user-images.githubusercontent.com/72593394/168239792-ccd5f7d5-257e-43e1-afc6-c8b31f4350a6.png">
				과제번호 C130012의 상세정보 데이터

</div>

</details>

  
<<<<<<< HEAD

## 🧹 사용된 기술 스택

>  - Back-End : <img  src="https://img.shields.io/badge/Python 3.10-3776AB?style=flat&logo=Python&logoColor=white"/>&nbsp;<img  src="https://img.shields.io/badge/Django 4.0.4-092E20?style=flat&logo=Django&logoColor=white"/>&nbsp;<img  src="https://img.shields.io/badge/mysql 5.0-1b9e41?style=flat&logo=Mysql&logoColor=white"/>&nbsp;<img  src="https://img.shields.io/badge/Django_rest_freamwork 3.13.1-009287?style=flat&logo=Django-rest-freamwork&logoColor=white"/>
>  - ETC　　　: <img  src="https://img.shields.io/badge/Git-F05032?style=flat-badge&logo=Git&logoColor=white"/>&nbsp;<img  src="https://img.shields.io/badge/Github-181717?style=flat-badge&logo=Github&logoColor=white"/>&nbsp;<img  src="https://img.shields.io/badge/Swagger-FF6C37?style=flat-badge&logo=Swagger&logoColor=white"/>

=======
  > - Back-End :  <img src="https://img.shields.io/badge/Python 3.10-3776AB?style=flat&logo=Python&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Django 4.0.4-092E20?style=flat&logo=Django&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/mysql 5.0-1b9e41?style=flat&logo=Mysql&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Django_rest_freamwork 3.13.1-009287?style=flat&logo=Django-rest-freamwork&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Docker 20.10.14-2496ED?style=flat&logo=docker&logoColor=white"/>

> - ETC　　　:  <img src="https://img.shields.io/badge/Git-F05032?style=flat-badge&logo=Git&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Github-181717?style=flat-badge&logo=Github&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Swagger-FF6C37?style=flat-badge&logo=Swagger&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/AWS EC2-FF9900?style=flat-badge&logo=Amazon AWS&logoColor=white"/>
>>>>>>> 9433f7c91f652090ff83095eb85e9bd6e3305c24
