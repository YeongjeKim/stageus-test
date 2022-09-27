function checkIdEvent() {
    var id = document.getElementById("signup_id").value

    if(id.length==0 || id=="") {
        alert("아이디를 입력해주세요.")
    }
    else {
        window.open('check_id.jsp','cheackIdForm','width=500px, height=400px')
    }
}


function showPwEvent() {
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

function checkValueEvent() {
    var id = document.getElementById("signup_id").value
    var pw = document.getElementById("signup_pw").value
    var name = document.getElementById("signup_name").value
    var phone = document.getElementById("signup_phone").value

    if(id.length==0 || id=="") {
        alert("아이디를 입력해주세요.")
    }
    else if(pw.length==0 || pw=="") {
        alert("비밀번호를 입력해주세요.")
    }
    else if(name.length==0 || name=="") {
        alert("이름을 입력해주세요.")
    }
    else if(phone.length==0 || phone=="") {
        alert("전화번호를 입력해주세요.")
    }
    else {
        document.getElementById("signup").submit()
    }
}