$(document).ready(function () {
    $('#loginForm').submit(function (event) {
        //submt이 자동으로 되는 기능을 막기
        event.preventDefault();

        //id, pwd를 가져오기
        //document.getElementById("id").value;

        var id = $('#name').val();
        console.log(id);

        $.post("http://httpbin.org/post",
            {"id" : id},
            function(data){
                //alert(data.form.id + '님 로그인되었습니다.');
                var myModal = $('#myModal');
                myModal.modal();
                myModal.find('.modal-body').text(data.form.id + "님 로그인되었습니다.");
            }
        );
    });
});
$(document).ready(function () {
    $('#RegistForm').submit(function (event) {
        //submt이 자동으로 되는 기능을 막기
        event.preventDefault();

        //id, pwd를 가져오기
        //document.getElementById("id").value;

        var id = $('#realname').val();
        console.log(id);

        $.post("http://httpbin.org/post",
            {"id" : id},
            function(data){
                //alert(data.form.id + '님 로그인되었습니다.');
                var myModal = $('#myModal2');
                myModal.modal();
                myModal.find('.modal-body').text(data.form.id + "님 회원가입 되었습니다.");
            }
        );
    });
});