function findId() {
    var name = document.getElementById("find_id_name").value
    var phone = document.getElementById("find_id_phone").value

    if(name.length==0 || name=="") {
        alert("이름를 입력해주세요.")
    }
    else if(phone.length==0 || phone=="") {
        alert("전화번호를 입력해주세요.")
    }
    else {
        document.getElementById("find_id").submit()
    }
}

function findPw() {
    var id = document.getElementById("find_pw_id").value
    var phone = document.getElementById("find_pw_phone").value

    if(id.length==0 || id=="") {
        alert("아이디를 입력해주세요.")
    }
    else if(phone.length==0 || phone=="") {
        alert("전화번호를 입력해주세요.")
    }
    else {
        document.getElementById("find_pw").submit()
    }
}