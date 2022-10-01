window.onload = function() {
    document.getElementById("check_input").value = opener.document.getElementById("signup_id").value

    var test = document.getElementById("check_input").value
    console.log(test)
}