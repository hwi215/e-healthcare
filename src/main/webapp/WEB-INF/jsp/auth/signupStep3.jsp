<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<body>
    <main id="content" class="memJoinContent">
        <div class="contHeadingWrap">
            <h2>회원가입</h2>
        </div>
        <ul class="stepWrap clearFix">
            <li><b>STEP 01</b>회원유형</li>
            <li><b>STEP 02</b>약관동의/본인인증</li>
            <li class="current"><b>STEP 03</b>회원정보</li>
            <li><b>STEP 04</b>가입완료</li>
        </ul>
            <fieldset>
                <legend>회원가입</legend>
                <!--회원가입 인풋-->
                <form class="login__input"  action="/auth/signup" method="post">

                    <div class="boardTypeForm">
                        <table>
                            <caption>회원가입(아이디, 비밀번호, 비밀번호 확인, 이름, 이메일, 주소, 휴대전화, 추가 연락처, 생년월일, 국적, 성별, 개인정보 보관기한 설정)</caption>
                            <colgroup>
                                <col style="width: 150px;">
                                <col style="width: auto;">
                            </colgroup>
                            <tbody>

                            <tr>
                                <th scope="row"><span class="required">*</span> 아이디</th>
                                <td><input type="text" name="username" required="required"  maxlength="30"/><button type="button" class="btnType01" id="idChkBtn" data-layer="layerIdCheck">중복확인</button><span class="desc">한글(3자 이상), 영문 + 숫자 혼용 6~12자</span></td>
                            </tr>
                            <tr>
                                <th scope="row"><span class="required">*</span> 비밀번호</th>
                                <td><input type="password" name="password" required="required" /><span class="desc">영문, 숫자, 특수문자(!@#$%^&*(),.;) 3가지 이상 조합으로 9~16자 이여야 합니다.</span></td>
                            </tr>

                            <tr>
                                <th scope="row"><span class="required">*</span> 비밀번호 확인</th>
                                <td><input type="password" /><p class="error" role="alert"></p></td>
                            </tr>

                            <tr>
                                <th scope="row"><span class="required">*</span> 이름</th>
                                <td><input type="text" name="name" required="required" /></td>
                            </tr>


                            <tr>
                                <th scope="row"><span class="required">*</span> 이메일</th>
                                <td>
                                    <input type="email" name="email" required="required" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="verTop"><span class="required">*</span> 주소</th>
                                <td>
                                    <input id="dorocode" name="dorocode" type="hidden" value=""/>
                                    <input id="sanyn" name="sanyn" type="hidden" value=""/>
                                    <input id="mainjibun" name="mainjibun" type="hidden" value=""/>
                                    <input id="subjibun" name="subjibun" type="hidden" value=""/>
                                    <input id="buildingno" name="buildingno" type="hidden" value=""/>
                                    <input id="admcd" name="admcd" type="hidden" value=""/>
                                    <input id="zipcode" name="zipcode" title="우편번호" onclick="addrSearch();" class="inputText" readonly="readonly" type="text" value=""/>
                                    <button type="button" class="btnType01" onclick="addrSearch();">주소찾기</button><br>
                                    <input id="addr1" name="addr1" title="기본주소" class="inputAddress" type="text" value=""/>
                                    <input id="addr2" name="addr2" title="상세주소" class="inputAddress" type="text" value=""/>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><span class="required">*</span> 휴대전화</th>
                                <td>
                                    <select title="휴대전화 첫번째 자리" name="phoneN1" id = "phoneN1">
                                        <option value="010" >010                             </option>
                                        <option value="032" >032                             </option>
                                        <option value="02" >02                             </option>
                                        <option value="070" >070                             </option>
                                    </select>

                                    <span class="txtWrap">-</span>
                                    <input type="phoneN2" name="phoneN2" required="required" />
                                    <span class="txtWrap">-</span>
                                    <input type="phoneN3" name="phoneN3" required="required" />

                                    <span class="supOption colorPoint" style="font-size: 18px;">
                                        <input id="sms_yn1" name="sms_yn" title="병원 SMS 정보 수신" checked="true" type="checkbox" value="Y"/><input type="hidden" name="_sms_yn" value="on"/>
                                        <label for="sms_yn1">홈페이지 회원 SMS 정보 수신 </label>
                                    </span>
                                </td>
                            </tr>

                            <tr>
                                <th scope="row"><span class="required">*</span> 생년월일</th>
                                <td>
                                    <input type="text" name="birth" required="required" /><span class="desc">생년월일 6자리를 입력하시오. ex) 991215 </span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><span class="required">*</span> 국적</th>
                                <td>
                                    <select title="국적" required name="nationality" id="nationality">

                                        <option value="001" >가나                             </option>

                                        <option value="002" >가봉                             </option>

                                        <option value="003" >가이아나                         </option>

                                        <option value="004" >감비아                           </option>

                                        <option value="174" >과델로프</option>

                                        <option value="005" >과테말라                         </option>

                                        <option value="175" >괌</option>

                                        <option value="176" >교황청</option>

                                        <option value="006" >그레나다                         </option>

                                        <option value="177" >그루지아</option>

                                        <option value="007" >그리스                           </option>

                                        <option value="178" >그린랜드</option>

                                        <option value="008" >기니                             </option>

                                        <option value="009" >기니비사우                       </option>

                                        <option value="164" >기타</option>

                                        <option value="179" >나미비아</option>

                                        <option value="010" >나우루                           </option>

                                        <option value="011" >나이지리아                       </option>

                                        <option value="012" >남아프리카공화국                 </option>

                                        <option value="180" >남조지아 &amp; 남샌드위치 군도</option>

                                        <option value="013" >네덜란드                         </option>

                                        <option value="181" >네덜란드 열도</option>

                                        <option value="014" >네팔                             </option>

                                        <option value="015" >노르웨이                         </option>

                                        <option value="182" >노폴크 아일랜드</option>

                                        <option value="183" >뉴 칼레도니아</option>

                                        <option value="016" >뉴질랜드                         </option>

                                        <option value="184" >니우에</option>

                                        <option value="017" >니제르                           </option>

                                        <option value="018" >니카라과                         </option>

                                        <option value="159" >대만</option>

                                        <option value="165" selected>대한민국</option>

                                        <option value="019" >덴마크                           </option>

                                        <option value="020" >도미니카공화국                   </option>

                                        <option value="021" >도미니카연방                     </option>

                                        <option value="022" >독일                             </option>

                                        <option value="023" >라오스                           </option>

                                        <option value="024" >라이베리아                       </option>

                                        <option value="185" >라트비아</option>

                                        <option value="032" >러시아                           </option>

                                        <option value="025" >레바논                           </option>

                                        <option value="026" >레소토                           </option>

                                        <option value="027" >루마니아                         </option>

                                        <option value="029" >룩셈부르크                       </option>

                                        <option value="028" >르완다                           </option>

                                        <option value="030" >리비아                           </option>

                                        <option value="186" >리투아니아</option>

                                        <option value="031" >리히텐슈타인                     </option>

                                        <option value="033" >마다가스카라                     </option>

                                        <option value="187" >마샬군도</option>

                                        <option value="188" >마세도니아</option>

                                        <option value="189" >마이너 아우틀링 합중국 군도</option>

                                        <option value="190" >마이크로네시아</option>

                                        <option value="191" >마카오</option>

                                        <option value="192" >마티니크</option>

                                        <option value="035" >말라위                           </option>

                                        <option value="036" >말레이시아                       </option>

                                        <option value="034" >말리                             </option>

                                        <option value="193" >메요트</option>

                                        <option value="038" >멕시코                           </option>

                                        <option value="039" >모나코                           </option>

                                        <option value="040" >모로코                           </option>

                                        <option value="041" >모리셔스                         </option>

                                        <option value="042" >모리타니                         </option>

                                        <option value="043" >모잠비크                         </option>

                                        <option value="194" >몬트세라트</option>

                                        <option value="195" >몰도바</option>

                                        <option value="037" >몰디브                           </option>

                                        <option value="044" >몰타                             </option>

                                        <option value="045" >몽골                             </option>

                                        <option value="046" >미국                             </option>

                                        <option value="196" >미령 버진군도</option>

                                        <option value="052" >미얀마                           </option>

                                        <option value="197" >바누아투</option>

                                        <option value="047" >바레인                           </option>

                                        <option value="048" >바베이도스                       </option>

                                        <option value="049" >바하마                           </option>

                                        <option value="050" >방글라데시                       </option>

                                        <option value="198" >버뮤다</option>

                                        <option value="054" >베냉                             </option>

                                        <option value="053" >베네수엘라                       </option>

                                        <option value="055" >베트남                           </option>

                                        <option value="056" >벨기에                           </option>

                                        <option value="170" >벨라루스</option>

                                        <option value="199" >벨리제</option>

                                        <option value="200" >보빗군도</option>

                                        <option value="201" >보스니아-헤르체고비나</option>

                                        <option value="057" >보츠와나                         </option>

                                        <option value="058" >볼리비아                         </option>

                                        <option value="059" >부룬디                           </option>

                                        <option value="099" >부르키나파소                     </option>

                                        <option value="060" >부탄                             </option>

                                        <option value="202" >북마리아나 군도</option>

                                        <option value="051" >북한                             </option>

                                        <option value="061" >불가리아                         </option>

                                        <option value="203" >불령 가이아나</option>

                                        <option value="204" >불령 남부지역</option>

                                        <option value="205" >불령 리유니온,코모도 제도</option>

                                        <option value="206" >불령 폴리네시아</option>

                                        <option value="062" >브라질                           </option>

                                        <option value="063" >브루나이                         </option>

                                        <option value="064" >사우디아라비아                   </option>

                                        <option value="207" >산마리노</option>

                                        <option value="065" >상투메. 프린시페                 </option>

                                        <option value="066" >서사모아                         </option>

                                        <option value="208" >서사하라</option>

                                        <option value="067" >세네갈                           </option>

                                        <option value="068" >세이셀                           </option>

                                        <option value="209" >세인트 키츠 네비스</option>

                                        <option value="210" >세인트 피레 미켈론</option>

                                        <option value="211" >세인트 헬레나</option>

                                        <option value="069" >세인트루시아                     </option>

                                        <option value="070" >세인트빈센트그레나딘             </option>

                                        <option value="073" >소말리아                         </option>

                                        <option value="071" >솔로몬                           </option>

                                        <option value="072" >수단                             </option>

                                        <option value="212" >수리남</option>

                                        <option value="074" >스리랑카                         </option>

                                        <option value="213" >스발비드 군도</option>

                                        <option value="075" >스와질란드                       </option>

                                        <option value="076" >스웨덴                           </option>

                                        <option value="077" >스위스                           </option>

                                        <option value="161" >스코틀랜드</option>

                                        <option value="090" >스페인</option>

                                        <option value="172" >슬로바키아</option>

                                        <option value="162" >슬로베니아</option>

                                        <option value="078" >시리아                           </option>

                                        <option value="079" >시에라리온                       </option>

                                        <option value="080" >싱가포르                         </option>

                                        <option value="081" >아랍에미리트                     </option>

                                        <option value="214" >아루바</option>

                                        <option value="215" >아르메니아</option>

                                        <option value="082" >아르헨티나                       </option>

                                        <option value="216" >아메리칸 사모아</option>

                                        <option value="083" >아이슬란드                       </option>

                                        <option value="084" >아이티                           </option>

                                        <option value="091" >아일랜드                         </option>

                                        <option value="171" >아제르바이잔</option>

                                        <option value="085" >아프가니스탄                     </option>

                                        <option value="086" >안도라                           </option>

                                        <option value="217" >안타티카</option>

                                        <option value="218" >안티가 바부다</option>

                                        <option value="087" >알바니아                         </option>

                                        <option value="088" >알제리                           </option>

                                        <option value="089" >앙골라                           </option>

                                        <option value="219" >앙귈라</option>

                                        <option value="105" >에디오피아                       </option>

                                        <option value="220" >에리트리아</option>

                                        <option value="221" >에스토니아</option>

                                        <option value="092" >에콰도르                         </option>

                                        <option value="093" >엘살바도르                       </option>

                                        <option value="094" >영국                             </option>

                                        <option value="222" >영령 버진군도</option>

                                        <option value="223" >영령 인도양</option>

                                        <option value="224" >영령 캐이맨 군도</option>

                                        <option value="095" >예멘                             </option>

                                        <option value="096" >오만                             </option>

                                        <option value="098" >오스트리아                       </option>

                                        <option value="100" >온두라스                         </option>

                                        <option value="225" >왈라스 &amp; 퓨투나 군도</option>

                                        <option value="101" >요르단                           </option>

                                        <option value="102" >우간다                           </option>

                                        <option value="103" >우루과이                         </option>

                                        <option value="158" >우즈베키스탄</option>

                                        <option value="169" >우크라이나</option>

                                        <option value="104" >유고슬라비아                     </option>

                                        <option value="106" >이라크                           </option>

                                        <option value="107" >이란                             </option>

                                        <option value="108" >이스라엘                         </option>

                                        <option value="109" >이집트                           </option>

                                        <option value="110" >이탈리아                         </option>

                                        <option value="112" >인도                             </option>

                                        <option value="111" >인도네시아                       </option>

                                        <option value="113" >일본                             </option>

                                        <option value="000" >입력안됨(누락)</option>

                                        <option value="114" >자메이카                         </option>

                                        <option value="226" >자이레</option>

                                        <option value="116" >잠비아                           </option>

                                        <option value="117" >적도기니                         </option>

                                        <option value="119" >중국                             </option>

                                        <option value="118" >중앙아프리카공화국               </option>

                                        <option value="120" >지부티                           </option>

                                        <option value="227" >지브랄타</option>

                                        <option value="228" >짐바브웨</option>

                                        <option value="121" >차드                             </option>

                                        <option value="122" >체코                             </option>

                                        <option value="123" >칠레                             </option>

                                        <option value="124" >카메룬                           </option>

                                        <option value="136" >카보베르데                       </option>

                                        <option value="163" >카자흐스탄</option>

                                        <option value="125" >카타르                           </option>

                                        <option value="126" >캄보디아                         </option>

                                        <option value="127" >캐나다                           </option>

                                        <option value="128" >케냐                             </option>

                                        <option value="130" >코모르                           </option>

                                        <option value="229" >코스 군도</option>

                                        <option value="131" >코스타리카                       </option>

                                        <option value="129" >코트디부아르                     </option>

                                        <option value="132" >콜롬비아                         </option>

                                        <option value="133" >콩고공화국                       </option>

                                        <option value="115" >콩고민주공화국                   </option>

                                        <option value="134" >쿠바                             </option>

                                        <option value="135" >쿠웨이트                         </option>

                                        <option value="230" >쿡 아일랜드</option>

                                        <option value="167" >크로아티아</option>

                                        <option value="231" >크리스마스 아일랜드</option>

                                        <option value="168" >키르기스스탄</option>

                                        <option value="232" >키리바티</option>

                                        <option value="137" >키프로스                         </option>

                                        <option value="138" >타이                             </option>

                                        <option value="173" >타지키스탄</option>

                                        <option value="139" >탄자니아                         </option>

                                        <option value="140" >터키                             </option>

                                        <option value="141" >토고                             </option>

                                        <option value="233" >토켈라우</option>

                                        <option value="142" >통가                             </option>

                                        <option value="234" >투르크 &amp; 카이코스 군도</option>

                                        <option value="235" >투르크멘</option>

                                        <option value="143" >투발루                           </option>

                                        <option value="144" >튀니지                           </option>

                                        <option value="145" >트리니나드토바고                 </option>

                                        <option value="236" >티모르</option>

                                        <option value="146" >파나마                           </option>

                                        <option value="147" >파라과이                         </option>

                                        <option value="237" >파로에 군도</option>

                                        <option value="148" >파키스탄                         </option>

                                        <option value="149" >파푸아뉴기니                     </option>

                                        <option value="238" >팔라우</option>

                                        <option value="239" >팔레스타인</option>

                                        <option value="150" >페루                             </option>

                                        <option value="151" >포르투칼                         </option>

                                        <option value="240" >포클랜드 군도</option>

                                        <option value="152" >폴란드                           </option>

                                        <option value="160" >푸에르토리코</option>

                                        <option value="153" >프랑스                           </option>

                                        <option value="154" >피지                             </option>

                                        <option value="241" >피트카이른</option>

                                        <option value="155" >핀란드                           </option>

                                        <option value="156" >필리핀                           </option>

                                        <option value="157" >헝가리                           </option>

                                        <option value="097" >호주</option>

                                        <option value="166" >홍콩</option>

                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><span class="required">*</span> 성별</th>
                                <td>
                                    <input type="radio" name="gender" id="male" value="M"><label for="male" class="lblTxt">남자</label>
                                    <input type="radio" name="gender" id="female" value="F"><label for="female" class="lblTxt">여자</label>
                                    <span class="desc">정확히 선택해 주십시오.</span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="verTop"><span class="required">*</span> 자동가입방지</th>
                                <td>
                                    <div class="autoJoin">
                                        <div class="img">
                                            <img src='/images/img_mem5.png' alt='5'>
                                            <img src='/images/img_mem0.png' alt='0'>
                                            <img src='/images/img_mem8.png' alt='8'>
                                            <img src='/images/img_mem9.png' alt='9'>
                                            <img src='/images/img_mem5.png' alt='5'>
                                            <img src='/images/img_mem6.png' alt='6'>
                                            <img src='/images/img_mem8.png' alt='8'>
                                            <img src='/images/img_mem2.png' alt='2'>

                                        </div>
                                        <div class="info">
                                            <p>
                                                자동가입을 방지하기 위해 보안절차를 거치고 있습니다.<br>
                                                왼쪽 이미지를 보이는 대로 입력해주세요.
                                            </p>
                                            <input type="text" name="prevent" id="prevent" maxlength="8" onkeydown="return onlyNumber();">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="colorPoint" style="font-size: 18px"><span class="required">*</span> 개인정보<br>보관기한 설정</th>
                                <td>
                                    <input id="personal_term1" name="personal_term" checked="true" type="radio" value="2"/><label class="lblTxt">2년</label>
                                    <input id="personal_term2" name="personal_term" type="radio" value="3"/><label class="lblTxt">3년</label>
                                    <input id="personal_term3" name="personal_term" type="radio" value="5"/><label class="lblTxt">5년</label>
                                    <span class="desc">회원님의 개인정보 보관 기한을 설정해주세요. 최대 5년까지 가능합니다.</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="btnWrap">
                        <button class="btnType03 btnBig" id="nextBtn">회원가입</button>
                    </div>
                    <!-- //boardTypeForm -->
                </form>
            </fieldset>

    </main>
</body>

<%@ include file="../layout/footer2.jsp"%>