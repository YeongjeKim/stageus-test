function checkId() {
    var id = document.getElementById("signup_id").value

    if(id.length==0 || id=="") {
        alert("아이디를 입력해주세요.")
    }
    else {
        window.open('check_id.jsp','','width=500px, height=400px')
    }
}


function showPw() {
    var pw = document.getElementById("signup_pw")
    var hide = document.getElementById("hide")
    var seek = document.getElementById("seek")

    if(pw.type == 'password') {
        pw.type = 'text'
        hide.style.display ='none'
        seek.style.display = 'block'
    }
    else {
        pw.type = 'password'
        hide.style.display ='block'
        seek.style.display = 'none'
    }
}