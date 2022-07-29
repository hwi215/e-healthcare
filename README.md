---
title: E-healthcare web service
description: 온라인 의료상담 서비스.
slug: ehealthcare
author: hwikyung Kim
img: ehealthcare.PNG
tag: 
  - spring, mysql, html, javascript, css, aws
---

E-healthcare란?<br>
우리 생활 중 일어날 수 있는 긴급한 상황에서 쉽고 편리하게 언제든지 의사의 도움을 요청할 수 있는 온라인 의료상담 서비스
</br></br>

### 1) 프로젝트 개요
언제 어디서나 의사의 도움을 요청할 수 있는 의료상담을 위한 웹서비스 개발
</br></br>

### 2) 프로젝트 방향성
- 해당 프로젝트는 학교 수업에서 진행한 기획 및 설계를 바탕으로 스스로 디자인, 백엔드, 프론트엔드를 모두 구현해보는 것을 목적으로 한다.
- 보완점에 대해서는 지속적으로 반영할 계획이다.
- 실제로 비대면 진료 서비스가 이루어지고 있으므로 배포할 계획은 없다.
</br></br>

### 3) 주제 선정 배경

대부분의 병원 진료는 오프라인으로 이루어지고 있어 환자들이 직접 병원에 찾아가야만 진료를 받을 수 있다. 하지만 병원들은 시내에 편중 되어있어서 도시 외곽에
거주하는 사람들은 병원과의 물리적인 거리가 멀어 접근하기 어려운 문제가 있다. 또한 대면 방식의 병원 진료는 많은 사람들과 접촉할 수 있기에 감염 위험이 있다. 
시간적으로도 역시 많은 제약들이 있습니다. 가령 자신의 스케줄로 병원 영업시간 내에 가지 못하는 경우나, 늦은 밤 갑자기 아픈 응급 상황 등이 있을 수 있다.

이에 따라 의사의 도움을 필요로 하는 다양한 환자들에게 원격 진료 서비스를 제공하여 
의사와의 채팅을 통해 상담하고, 진료를 받으며 증상에 맞는 처방전을 온라인으로 제공하여 시공간 제약 없이 의료서비스를 제공하고자 E-healthcare 서비스를 기획했다.
</br></br>

### 4) 주 사용층
- 병원 영업시간 내에 병원에 방문하기 어려운 사람
- 질병 감염 위험성에 따라 다른 사람들과 접촉을 불편해하는 사람
- 사전에 의사 정보를 확인하여 본인이 원하는 전문의에게 진료받고 싶은 사람
</br></br>

### 5) 브랜딩
① 네이밍

- E-healthcare: 온라인 헬스케어(치료를 목적으로 하는 의료서비스)

② 로고	
<p align="center">
<img width="20%" src ="https://user-images.githubusercontent.com/56347876/181690017-07efd9d1-2687-46a4-a69e-329c86d9ff30.png"/>
</p>
</br>

### 6) 기술스택
- ForntEnd   
   - HTML
   - JavaScript
   - CSS

- BackEnd   
   - spring
    - Mysql 
    - JPA

</br></br>


## ✨ 세부기능
### 1️⃣ 메인페이지(헬스케어소개)
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181667537-934400b1-1d8e-4ab2-aded-dabda9f3a07e.PNG"/>
</p>
</br></br>

### 2️⃣ 로그인, 회원가입
   1) 로그인
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181667928-894ab98c-755f-4595-b393-a4023fac7ab9.PNG"/>
</p>
</br></br>

   2) 회원가입 STEP1
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181669687-d7350ff7-d0d2-4d2c-a49f-078735eda8b8.PNG"/>
</p>
</br></br>

  2-1) 진료회원 회원가입 STEP2
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181668769-870865d9-1c7a-4731-b926-09081d1f5aa1.PNG"/>
</p>
</br></br>

  2-2)  회원가입 STEP2
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181669537-a1a81790-f6ae-4090-984e-8f60baf4023e.PNG"/>
</p>
</br></br>

  2-3) 회원가입 STEP3
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181669989-9ab10181-eab7-46fd-a590-5770c7ab9c4e.PNG"/>
</p>
</br></br>

  2-3) 회원가입 STEP4
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181669810-dd8a7edf-28bf-424c-a64d-b5d33522f70b.PNG"/>
</p>
</br></br>

### 3️⃣ 진료분야선택 및 상담신청
  1) 진료분야 선택
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181681217-7fdd9ea1-18ae-4a4f-b668-ebe441ca63bd.PNG"/>
</p>
</br></br>

  2) 진료분야별 전문의 상세정보
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181681234-c3a4e2d8-4168-4a8c-aae6-3a71d033a68f.PNG"/>
</p>
</br></br>
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181681237-b28e1684-25f2-4f20-ada7-c4fabf5f04b5.PNG"/>
</p>
</br></br>


### 4️⃣ 상담
  1) 상담 신청
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181690710-5b6699f9-a64d-4ff1-a306-e81bc7b1b105.PNG"/>
</p>
</br></br>

  2) 상담(채팅)
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181682448-2e93899b-4642-4d09-915c-2aca6ae1ea50.PNG"/>
</p>
</br></br>

### 5️⃣ 처방전
  1) 처방전 작성
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181682454-306315b1-7204-4232-bc4c-3833c91af8ea.PNG"/>
</p>
</br></br>

  2) 처방전 확인
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181689593-dcbc5bdb-38c1-4cf7-99bb-cab1ebf8a82b.JPG"/>
</p>
</br></br>


### 6️⃣ 마이페이지 
  1) 진료회원 마이페이지
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181682452-0d704e8a-a433-49c4-8a8d-e1502e20123c.PNG"/>
</p>
</br></br>

  2) 전문의료진 마이페이지 - 상담요청목록
<p align="center">
<img width="90%" src ="https://user-images.githubusercontent.com/56347876/181682453-67ca1f24-93b1-473a-a6f9-3634c39c3b0d.PNG"/>
</p>
</br></br>

## ✨ 확장 가능성 및 기대효과

### 1) 확장 가능성
- "의사찾기"를 통해 사전에 의사의 정보를 확인하여 사용자가 의사를 직접 선택할 수 있다.
- “내 질병 찾기”를 통해 사용자의 증상이 어느 질병과 관련있는 지 파악하여 관련 분야의 전문 의사들과 상담 할 수 있다.

### 2) 기대효과
- 온라인 진료 서비스를 제공하여 의사와의 채팅을 통해 진료를 받을 수 있다.
- 증상에 맞는 처방전을 온라인으로 제공 받을 수 있다. 
- 비대면 서비스로 의사나 다른 환자들과 직접 대면하지 않아 전염성 질병을 예방하고 다른 사람들과의 접촉을 최소화 할 수 있다.
- 사전에 의사의 정보를 확인하여 자신이 의사를 직접 선정할 수 있어 선택의 폭을 넓힐 수 있다.
