<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>


    <script type="text/javascript">
        var socket = null;
        $(document).ready(function(){
            if(${login != null}){
                connectWs();
            }
        })


        //소켓


        function connectWs(){
            console.log("tttttt")
            var ws = new SockJS("/alram");
            socket = ws;

            ws.onopen = function() {
                console.log('open');

            };

            ws.onmessage = function(event) {
                console.log("onmessage"+event.data);
                let $socketAlert = $('div#socketAlert');
                $socketAlert.html(event.data)
                $socketAlert.css('display', 'block');

                setTimeout(function(){
                    $socketAlert.css('display','none');

                }, 5000);
            };

            ws.onclose = function() {
                console.log('close');
            };

        };

        //소켓끝??


        //댓글 등록
        function commentInsert(insertData){
            console.debug("reply.socket",socket)

            $.ajax({
                url : '/menu/gj',
                type : 'post',
                data : insertData,
                processData: false, contentType: false,

                enctype : 'multipart/form-data',
                success : function(data) {

                    commentList(); //댓글 작성 후 댓글 목록 reload
                    $('[name=content]').val('');
                    $('.myEditor').summernote('reset');

                    //소켓
                    if (readWriter != writer) {
                        if (socket) {
                            let socketMsg = "reply," + writer + "," + readWriter + "," + bno + "," + readTitle + "," + bgno;
                            console.log(socketMsg);
                            socket.send(socketMsg);
                        }
                    }
                }
            });
    </script>

<body>
<div id="container" class="container">
    <h1>${roomName}의 채팅방</h1>
    <input type="hidden" id="sessionId" value="">
    <input type="hidden" id="roomNumber" value="${roomNumber}">

    <div id="chating" class="chating">
    </div>

    <div id="yourName">
        <table class="inputTable">
            <tr>
                <th>사용자명</th>
                <th><input type="text" name="userName" id="userName"></th>
                <th><button onclick="chatName()" id="startBtn">이름 등록</button></th>
            </tr>
        </table>
    </div>
    <div id="yourMsg">
        <table class="inputTable">
            <tr>
                <th>메시지</th>
                <th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
                <th><button onclick="send()" id="sendBtn">보내기</button></th>
            </tr>
        </table>
    </div>
</div>

</body>
</html>