
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

<br>

## ⌛ 개발기간
<h4>2022/05/10 ~ 2022/05/12</h4>

<br>

## 🚥 ERD
<img width="400"  src="https://user-images.githubusercontent.com/72593394/168226135-630e61ca-1dc8-47bb-9938-ef6a9b312186.png">
  
<br>

## 🔫 로컬에서 실행 방법

1. 깃허브 repository에서 clone을 받습니다.

   `git clone https://github.com/wanted-pre-onboarding-2nd-BE-Team-D/003_Human_scape.git`

2. MySQL에서 DB를 생성합니다.

   `CREATE DATABASE 003_Human_scape`

3. 루트폴더에 `my_settings.py` 를 생성하고 필요한 키값을 넣습니다.

   ```python
   DATABASES = {
       'default' : {
           'ENGINE': 'django.db.backends.mysql',
           'NAME': 'database 이름'
           'USER': 'mysql 아이디'
           'PASSWORD': 'mysql 비밀번호'
           'HOST': '127.0.0.1',
           'PORT': '3306',
   				 'OPTIONS': {'charset': 'utf8mb4'}
       }
   }
   
   SECRET_KEY = 'Django Secret Key'
   
   SERVICE_KEY = 'Open API Key'
   ```

4. 가상환경 생성 후 requirements.txt의 필요한 라이브러리를 다운로드 합니다.

   ```python
   Windows:
   1. python -m venv venv
   2. venv\Scripts\activate.bat
   3. pip install -r requirements.txt
   
   Mac:
   1. python -m venv venv
   2. source venv\bin\activate
   3. pip install -r requirements.txt
   ```

5. migrate를 합니다.

   `python manage.py migrate`

6. 로컬서버를 실행시킵니다.

   `python manage.py runserver`

<br>

## 🎭 프로젝트 후기

구현한 방법과 이유 어려웠던 점 , 간략한 내용(개인) 서술

<details>

<summary>권상현</summary>

<div  markdown="1">

  <details>

  <summary>초기 계획</summary>

  <div  markdown="1">

  1. 초기 DB 설계 시 오픈 API에서 받아 온 임상시험 정보(이하 정보)를 토대로 생성한 각각의 레코드(로우, 행)에 생성 시각을 나타내는 `created_at`, 최신화 시각을 나타내는 `updated_at`을 추가하고 이를 통해 이력관리를 계획함.

  2. 이후 매일 자정마다 진행될 `batch_task`는 다음과 같이 구성

    a. 오픈 API를 통해 받아온 데이터들 중 `과제번호` 가 제일 고유성이 있는 항목일 것이라 판단, `task_id` 컬럼으로 지정하고 primary_key로 선언

    b.  `과제번호`를 토대로 새로 입력해야 할 정보인지 DB에 이미 존재하고 있는 정보인지 구분

      - DB에 존재하지 않는 정보는 레코드를 새로 생성

      - 이미 DB에 입력한 정보일 경우 받아온 값과 비교해 변경사항이 있다면 최신화

    c. 이 과정은 `Django`에서 제공하는 `update_or_create` 메소드를 사용

  3. 정보를 불러와 조회할 때 `created_at`, `updated_at` 항목을 바탕으로 최신화 시점을 분류하고 최근 일주일 내 변경사항이 있는 정보를 조회하는 API를 구현

  <div>

  </details>

  <details>

  <summary>문제 발생</summary>

  <div markdown="1">

  1. `update_or_create` 메소드를 사용해 `batch_task`를 구현 했을 경우 새로운 정보를 레코드로 입력하는 과정은 계획대로 구현됨

  2. 받아온 정보와 이미 DB에 입력 된 정보를 비교해 값을 업데이트 하는 과정을 진행하던 중 `update_or_create` 메소드의 로직 문제로 최신화 할 값이 없더라도 `update`가 진행, `updated_at` 항목이 batch_task를 진행한 시각으로 최신화 되어버림.

  2-1. `update_or_create`의 소스코드를 확인해 본 결과 `create` 가 아닌 경우에는 `update` 메소드의 로직을 그대로 따른 후 마지막에 `save()`를 실행함을 확인

  <img  src="https://user-images.githubusercontent.com/72593394/168459528-92270c38-1d55-4826-82d2-be36a1a17a4e.png"  width="500"/>

  2-2. 이럴 경우 값의 변화 유무에 상관 없이 일단 값 변경에 대한 쿼리를 날리므로 `updated_at` 이 최신화 될 수 밖에 없음

  </div>

  </details>

  <details>

  <summary>문제 해결</summary>

  <div markdown="1">

  1.  `update_or_create` 대신 `get_or_create`를 사용

  2. 얻은 정보의 `task_id`를 기준으로 `create`, `get` 여부를 결정

    -  `create`일 경우 : 해당 정보의 새로운 레코드 생성

    -  `get`일 경우 : 정보의 `task_id` 를 가진 레코드를 불러온 뒤

    - 변경될 것이라 판단한 ’연구기간’, ‘전체목표연구대상자수’, ‘임상시험단계(연구모형)’의 세부정보만 비교, 변경된 것이 있다면 `save()` 하여 `updated_at`의 변동을 최소화 시킴

  <aside>

  🗣 위의 세 요소를 변동될 것이라 판단한 이유는 다음과 같음

  1. 세 요소만 빈 값이 존재

  2. 과제번호, 과제명, 연구책임기관, 진료과의 경우 고유명사와 비슷하다 판단, 쉽게 변하지 않을 것

  3. 연구범위의 경우 단일/다수로 뚜렷한 차이를 보였으며 연구종류의 경우 기타 항목이 존재하여 기준이 확실치 않을 경우 해당 항목으로 분류 될 것이라 판단

  </aside>

  </div>

  </details>

  <details>

  <summary>결론</summary>

  <div markdown="1">

  - 처음 계획했던

    - DB에 입력되지 않은 임상연구 정보를 받아왔을 경우 DB에 새로 입력

    - 이미 존재하는 임상연구 정보일 경우 변동 예상 항목을 비교해 변동이 있을 경우 해당 항목을 최신화

    - 세부정보 최신화가 진행될 경우 `updated_at` 값 역시 최신화하며 `updated_at` 값을 통해 최신화 시각을 식별

    등의 목표에 부합할 수 있었다.

  - 또한 해당 목표를 달성함에 따라 요구 사항에 존재했던

    1.  `기존 데이터와 API 데이터간의 수정된 사항을 비교하여 해당 임상시험이 업데이트 된 것인지 새로 추가된 것 인지 구별이 가능해야함`

    2.  `최근 일주일내에 업데이트(변경사항이 있는) 된 임상정보 리스트`

    조건을 만족시킬 수 있었으며 특히 2번 요구 사항을 조회하는 API 구현을 쉽게 마무리 할 수 있었다.

  </div>

  </details>

</div>

</details>

<details>

<summary>김석재</summary>

<div markdown="1">

  <details>

  <summary>계획</summary>
    
  <div  markdown="1">
  
  - 목적 - project app api를 컨테이너로 만들어 온라인에서 사용 할 수 있게 배포

  1. 완성된 django proejct를 dockerfile을 이용해 컨테이너 화 한다

  2. 여태까지 사용했던 django runserver는 production 환경에선 `보안 및 퍼포먼스 이슈로 추천하지 않으므로 다른웹 서버`를 찾게되었다

  3. Apache와 nginx중 `많고 긴 처리가 필요없는 이번 project app에는 비동기적 처리`를 사용하는 `nginx`가 적합해 보였다

  4.  `웹 서버인 nginx와 웹 어플리케이션인 django를 연결할 WSGI`로 `gunicorn`을 선택했다(`상대적으로 가볍고 빠르고 쉽다`)

  5. 컨테이너 화 한 것은 `nginx , mysql , django (+ gunicorn)`이고 이를 서로 연동하기위해 `docker-compose`를 사용했다

  6. docker-compose로 정상 작동하는것을 확인 한 후 `EC2`에서 `docker, docker-compose, git 정도만 설치`했다

  7. 그 다음은 git pull을 이용해 프로젝트를 받고 (`key값이 들어있는 파일은 git에서 받을수 없고 직접 올리거나 작성`해야합니다) `간편하게 docker-compose`를 실행 하면 된다

  8. 그 이후 몇번의 수정이 있었지만 `git pull만 하고 바로 배포 할 수 있다`

  </div>

  </details>

  <details>

  <summary>문제 -1</summary>

  <div markdown="1">
    
  <details>

  <summary>문제</summary>

  <div markdown="1">

  docker-compose시 api를 통해 `데이터 리스트를 조회하면 아무것도 나오지 않는(비어있는 db)` 문제가 생겼다

  </div>

  <details>

  <summary>문제상황</summary>

  <div markdown="1">

  - DB의 데이터가 비어있다

  - docker-compose는 실행이된다

  - api는 정상적으로 동작한다

  </div>

  </details>
      
  <details>

  <summary>추측</summary>

  <div markdown="1">

  - docker-compose 시 db가 제대로 입력되지 않는 것 같다

  </div>

  </details>

  </div>
      
  </details>

  <details>

  <summary>원인 분석</summary>

  <div markdown="1">

  - docker-compose시 나오는 로그를 전부 읽어보았다

  - sql 파일로 db 초기셋팅하는 부분이 동작하지 않는 것을 알게되었다

    <details>

    <summary>원인 -1</summary>

    <div markdown="1">

      ```python

      volumes:

      - data:/var/lib/mysql/

      - ./db_name.sql:/docker-entrypoint-initdb.d/db_name.sql

      ```

      -  `/var/lib/mysql/`은 mysql 설치 폴더인데

      if문으로 mysql 폴더를 체크하고 없으면 initdb.d폴더를 확인해 초기 db를 불러들인다

      `즉, data:/var/lib/mysql/ 이있으면 initdb.d가 동작을 안한다`

      - /var/lib/mysql/에 내가 쓰던 mysql을 넣었다면 database를 다 가져왔을 것이다 하지만 dockerhub의 image로 된 mysql을 가져와 비어있게되는데 이걸 놓쳤다

      - 또 compose 실행시 migrate를 하기때문에 스키마만 생성된것으로 추측된다

    </div>

    </details>

    <details>

    <summary>원인 -2</summary>

    <div markdown="1">

      - `web_1 exited with code 1` 와 함께 project app 도커 실행이 중단된다

      - mysql github issue에 같은 문제를 가진 사람이있었는데 초기화될때 뜨는 문구일 뿐이라고 한다

      <img  src="https://user-images.githubusercontent.com/72593394/168459694-5dac6201-eeeb-43cb-987f-2928c937b8e0.png"  width="500"/>

      신경안써도 된다고 하신다 ㅠㅠ

      - 뒤늦게 확인해보니

        1.  `/var/lib/mysql/`가 없을때 db를 읽지 못해 에러를 발생

        2. project app이 mysql과 연동 할 수 없어 실행이 중단

        3. mysql이 initdb를 읽어와 db를 생성

        4. 수동으로 project app을 다시 실행하면 정상으로 작동한다

    </div>

    </details>

    </div>

    </details>
      
      <details>

      <summary>해결</summary>

      <div markdown="1">

      1. db voluens에서 `/var/lib/mysql/` 삭제

      2. project app 에 `restart: always` 추가 , `migrate` 실행 삭제

      추가 - sql파일을 이용해 db를 직접 넣을 경우 migrate가 필요 하지않다 migrate를 빼주면 project app이 종료되지않는다
      </div>

      </details>

      <details>

      <summary>무엇이 이 문제를 어렵게 만들었는가?</summary>

      <div markdown="1">
        
      나는 db 데이터의 유무를 `제작한 api를 통해` 체크했는데 `원인 -1`을 해결했을때는 `**project app의 도커가 종료**`되면 api를 통해 체크를 할 수 없었다.

      사실 도커가 종료되었다는 것도 모르고 `**db의 문제로 api가 동작하지 않는다고 생각했다**`

      팀원들과 상의해 `각 도커 내부를 확인` 하기로 하고 도커에 접속해 체크 하던 중 `원인-1`을 해결할 때 `project app의 도커가 오류로 종료`된다는 것을 알았다.

      그리고 그때 `db 도커는 작동 중`이며 `db의 데이터가 채워져`있는 것을 확인 할 수 있었다.

      `원인-1`을 해결하고 `project app의 도커를 다시 키는 것` 만으로 해결되는 간단한 문제였다.

      - 결론적으로 docker에서 리눅스 cli를 처음 접해 사용이 익숙치 않다는 이유로 `보기 편한 api로만 체크`를 했다는 점과 `추측으로 문제는 여기서 나는거다 라고 확신`해버린 점이 간단한 문제를 어렵게 만들었다.

      내 이런 문제점을 알고 있었다 프로젝트에서 배포를 맡은 것 도 배포를 해본적이없어 도전해 보고싶기 때문이었다. 새로운 것에 도전해 익숙하지 않음에 대한 두려움을 이겨낼것이다

      </div>

      </details>

<details>

<summary>문제 -2</summary>

<div markdown="1">

  <details>

  <summary>문제</summary>

  <div markdown="1">

  - 배포를 했을때 `crontab이 작동하지않는다`

  <details>

  <summary>문제상황</summary>

  <div markdown="1">

  - crontab 작동 시간이 되었는데 아무 반응이없다

  - docker-compose log 화면에 crontab log가 없었다

  <img  src="https://user-images.githubusercontent.com/72593394/168459697-f4b1b6f9-1e52-449b-b70e-e79f68d88d8c.png"  width="500"/>

  - crontab log 파일이 생성되어야 하는 위치에 아무것도 없다

  </div>

  </details>

  <details>

  <summary>추측</summary>

  <div markdown="1">

  - crontab으로 batch를 구현한 팀원은 컨테이너로 테스트를 하지 않은 상태였다

  - 로컬 컨테이너 테스트는 api 위주로 동작을 테스트했고 crontab을 제대로 체크하지 못했다

  - 그렇기 때문에 개발환경과 배포 환경에 따른 문제가 생겼을것이다

  </div>

  </details>
    
  </div>

  </details>

  <details>

  <summary>원인 분석 및 해결</summary>

  <div markdown="1">

  - docker-compose시 나오는 `로그를 전부 읽어보았다`

  - 문제 1 - 배포환경에서 crontab을 인식하지 못하는것을 알게되었다

    - 원인 ⇒ 배포환경에서 `django -crontab을 설치하지 못함`

    - 해결 ⇒ `RUN*apt-get install -y cron` Dockerfile 에서 cron 설치*

  - 문제 2 ⇒ cronjobs가 추가 되지 않음을 알게되었다

    - 원인⇒ `crontab을 추가하는 명령어를 입력 해야한다`

    - 해결⇒ docker-compose시 `python [manage.py](http://manage.py/) crontab add` 추가

  - 문제 3 ⇒ log파일이 생성되지않는다

    - 원인⇒ `cron 서비스를 켜주어야 했다`

    - 해결 ⇒ `service cron start` cron 서비스를 켜준다

  <img  src="https://user-images.githubusercontent.com/72593394/168459708-b341a6f7-c2be-43a2-a9ed-43eaa4a8391c.png"  width="500"/>

      Batch_task.log2 가 생성됨

  - 문제 4 ⇒ `Batch_task.log2`가 아닌 `Batch_task.log`가 생성되어야함

    - 원인 ⇒ log 파일 문제를 해결하고자 `cronjobs 구문을 수정`했기 때문

    - 해결 ⇒ cronjobs 구문을 원래 대로 되돌림 하지만 `log가 다시 생성되지 않았다`

  - 문제 5 ⇒ cronjobs 구문을 `제대로 사용했음에도` log가 생성되지않는다

    - 원인 ⇒ cronjobs는 제대로 실행되고있었으나 `출력되는 값이 없어 log가 생성되지않았다` 또한 `docker-compose에서 cronjob이 동작한다는 log가 출력될 것으로 오해했다, 정상 동작시에도 출력되지않는다`

    - 해결 ⇒ `hello를 출력하는 테스트용 py 파일`을 만들어 테스트, log가 제대로 찍혀 문제를 찾았고 `원래 코드에서 출력을 추가`했다

      <img  src="https://user-images.githubusercontent.com/72593394/168459706-169bb103-dfa5-4f96-ab1b-ca99346d24de.png"  width="500"/>

    - 테스트

  <img  src="https://user-images.githubusercontent.com/72593394/168459705-59ebad7f-7126-492b-8490-310e6a139f00.png"  width="500"/>

    - 정상 출력을확인

  </div>

  </details>

  <details>

  <summary>무엇이 이 문제를 어렵게 만들었는가?</summary>

  <div markdown="1">

  cromtab의 문제만 본다면 `crontab의 log가 어떤식으로 출력되는지 알지못해 문제를 더욱 어렵게 만들었다` 할 수 있지만 근본적인 문제는 `구현과 배포의 조화가 이루어 지지않았다`,

  `동작을 확인 할 수 있는 테스트코드가 존재하지않았다` 그리고 `코드리뷰가 부족했다`

  이번 프로젝트에서 배포를 메인으로 작업했는데 개발이 완성된 것을 배포한다는 생각을 하고 있었다 그리고 정신없이 배포를 구현하다보니 나는 `개발쪽 정보를 잘 모르고 개발쪽에선 배포쪽 정보를 모르게 되었다`

  일찍 `로컬에서 docker-compose 사용하는 방법을 알려 배포환경에서 테스트`를 할 수 있게 하거나, 반대로 `무엇을 테스트 하는지 알았다면` 배포환경에서 테스트를 해 이런 문제를 방지 하지 않았나 생각하게되었다.

  `서로 다른 업무를 맡아 각자 일을 했지만 하나의 작품을 만드는 만큼 프로젝트의 전반적인 이해가 필요하다는 점을 제대로 느꼈다`

  </div>

  </details>
  
</div>

</details>

</div>

</details>

</div>

</details>

<details>

<summary>류성훈</summary>

<div markdown="1">

  - 구현한 기능
      - Django 프로젝트 초기세팅
          - 앱 생성, DB모델링
          - 프로젝트 초기세팅 및 DB연동, 환경변수 분리
      - Swagger 적용
          - 구현 된 API을 확인할 수 있는 문서를 Swagger을 사용하여 작성했습니다.
      - README 작성
          - 프로젝트의 대문인 리드미를 작성하여 프로젝트를 설명해놓았습니다.
  - 어려웠던 점 및 보완할 점
      - Swagger
          - Django View작성 시 GenericView 혹은 Viewset과 같은 기능을 사용하였을 때, CRUD기능이 내장되어 있어서 Swagger 데코레이션을 넣을 수가 없었습니다.
          - Swagger 데코레이션을 붙여 API를 문서에 보이게 하기 위해서는 문서화하고싶은 기능들을 오버라이드 해야한다는 사실을 알게되었습니다.
          - 더욱 큰 프로젝트에서 정교한 API문서를 작성하기위해서는 꼼꼼함이 필요할 것이라는 생각이 들었습니다.
      - README
          - 마크다운 문법을 제대로 다루어 본 적이 없었어서, 리드미를 작성하는데 꽤 오랜 시간이 들었습니다.
          - 특히나 토글을 적용하는 것이 많이 헷갈렸습니다. 노션에서는 `‘>’` 로 토글 기능이 간단히 되지만, 리드미에 적용시키려면 `<detail> <summary> </summary> <div markdown=”1”> </div> </detail>` 을 하여 토글 하나를 적용시켜야 했습니다.
          - 깊이가 최대 4까지 되는 토글을 적용하는것이 어려웠고, HTML지식과 마크다운 문법에 더 익숙해 져야하고, 집중력을 보완해야겠다는 생각이 들었습니다.

</div>

</details>

<details>

<summary>정미정</summary>

<div markdown="1">

구현한 기능

1. DB 모델링
  
  - 모델을 여러 개로 나눈 이유는 추후 데이터 확장성 고려 또한 공통적으로 중복된 값을 가지는 필드이였기 때문에 데이터베이스 정규화 규칙을 따라 구현했습니다.

  - 과제 번호는 고유한 값이기 때문에 `pk`로 설정했습니다.

2. OPEN API 통신

  - 데이터의 개수가 145개로 적어 한 페이지에 모든 데이터를 담아 호출했습니다..

    -  `page=1 perpage=145`

3. 임상 정보 APIs

  - 정보의 수정이나 삭제는 OPEN API에서 이루어지는 것이고

    지금 작성한 API는 정보를 보여주는 기능만 하는 게 맞다고 판단해서

    읽는 기능만 구현했습니다.. (`ListAPIView` , `RetriveAPIView`)

  - generics.view를 이해하고자 사용해봤습니다.

    1. 임상정보 리스트 API

      - 최근 일주일내에 변경사항이 있는 임상정보 리스트

        -  `updated_at__gte` 에 일주일 전 날짜를 적용했습니다.

      - pagination을 위한 offset, limit

      - 쿼리 파라미터로 받아 적용했습니다.

      - 검색 기능 제공

        - 검색에 특정 필드를 검색하라는 조건이 없어 사용자가 주로 검색을 할 것 같은 필드를 임의로 선정했습니다..(과제명, 연구범위, 연구종류, 연구책임기관, 임상시험단계, 진료과)

        - 여러 개의 조건을 사용하기 위해 **Q**를 사용했습니다.

      **어려웠던 점**

      - gernics.view를 처음 사용해보는데 제공해주는 기능이 많지만 원하는 추가적인 기능이 있을 때 메소드 오버라이딩의 필요성을 느꼈습니다..

      - 쿼리 파라미터가 많아 `ListAPIView` → `GenericAPIView -> get_queryset`를 커스텀했습니다.

      - foreignkey로 연결한 값들을 `select_related`로 불러왔으나 쿼리문을 확인해보니 foreignkey로 연결한 테이블의 다른 값을 더 가져오지 않아 `select_related`가 필요없다는 것을 알게 되어 `select_related`의 개념을 이해하게 됐습니다.

      - serializer에 foreignkey로 연결한 테이블들은 id로 나와서 값으로 보이도록 수정해야했다. `serializer.Charfield`로 값을 보여줌으로 해결했습니다.

    이전
        
    <img  src="https://user-images.githubusercontent.com/72593394/168459704-f9bc3774-49e9-4683-b8e2-5b404f3a813d.png"  width="500"/>

    이후

    <img  src="https://user-images.githubusercontent.com/72593394/168459703-beec41d7-3748-4762-9f35-8b1fef101ce6.png"  width="500"/>

    2. 특정 임상정보 API

      - 특정 임상정보 읽기

        - task_id가 pk 이므로 `lookup_field=task_id`로 설정하는 것이 직관적이라고 생각했습니다.

  4. 배포 후 swagger ui 의 request url관련
    
  **어려웠던 점**

  ❗ 로컬에서 swagger 주소에 들어가 실행했을 때 잘 작동했으나 배포 후 실행해보니 `failed fetch` 가 출력됐습니다.

  <img  src="https://user-images.githubusercontent.com/72593394/168459702-52838a89-e843-4805-82ec-8d430b368bb7.png"  width="500"/>

  `ec2주소/api/research`로 요청이 가야하는 데 nginx.conf에서 설정해준 proxy_path인 `web/api/research`로 연결이 되어 오류가 났습니다.

  proxy_path는 docker-compose에서 작성된 컨테이너명으로 변경하면 아예 연결이 되지 않아 변경할 수 있는 부분이 아니였습니다.

  ```yaml

  location / {

  proxy_pass http://web/;

  proxy_set_header Host $host;

  proxy_set_header X-Real-IP $remote_addr;

  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

  }

  ```

  찾아본 결과 proxy_set header로 변수를 설정해야한다는 것을 알게되어

  - Host : 요청이 들어왔을 때 host 명

  - X-Real-IP: 요청한 클라이언트의 실제 IP

    -  `$remote_addr`: 요청한 클라이언트 주소

  - X-Forwarded-For: 클라이언트의 IP 주소, 이전에 프록시 서버가 또 있었다면 그 IP 를 의미

    -  **$proxy_add_x_forwarded_for**: 요청 헤더와 그 뒤에 따라오는 클라이언트의 원격 주소를 포함

  이 세가지를 추가 후 다시 배포한 결과

  <img  src="https://user-images.githubusercontent.com/72593394/168459701-b6e5f8db-d5fb-4272-b776-e6ad28745545.png"  width="500"/>

    정상적인 값이 반환되는 것을 확인할 수 있었습니다.
      
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

  



## 🧹 사용된 기술 스택

> - Back-End :  <img src="https://img.shields.io/badge/Python 3.10-3776AB?style=flat&logo=Python&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Django 4.0.4-092E20?style=flat&logo=Django&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Django-DRF 3.13.1-009287?style=flat&logo=Django&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Django-crontab 0.7.1-FF7300?style=flat&logo=Django&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Mysql 8.0.28 -1b9e41?style=flat&logo=Mysql&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Docker 20.10.14-2496ED?style=flat&logo=docker&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Gunicorn 20.1.0-499848?style=flat&logo=gunicorn&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/NGINX 1.21.6-0ECAD4?style=flat&logo=NGINX&logoColor=white"/>
> 
> - ETC　　　:  <img src="https://img.shields.io/badge/Git-F05032?style=flat-badge&logo=Git&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Github-181717?style=flat-badge&logo=Github&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/Swagger-FF6C37?style=flat-badge&logo=Swagger&logoColor=white"/>&nbsp;<img src="https://img.shields.io/badge/AWS EC2-FF9900?style=flat-badge&logo=Amazon AWS&logoColor=white"/>