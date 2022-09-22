function showNav() {
    var show = document.getElementById("staff_list")

    if(show.style.left == '-250px') {
        show.style.left = '0px'
    }
    else {
        show.style.left = '-250px'
    }
}

function showProfileMenu() {
    var show = document.getElementById("profile_menu")
    // var color = document.getElementById("header_button_image")

    if(show.style.display == 'none') {
        show.style.display = 'flex'
    }
    else {
        show.style.display = 'none'
    }

    // if(color.style.filter == 'brightness(0)') {
    //     color.style.filter = 'brightness(1)'
    // }
    // else {
    //     color.style.filter = 'brightness(0)'
    // }
}

window.onload = function() {
    document.getElementById("staff_list").style.left = '-250px'
    document.getElementById("profile_menu").style.display = 'none'
}