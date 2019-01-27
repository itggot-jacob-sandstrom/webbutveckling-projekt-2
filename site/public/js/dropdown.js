function dropdown(event){
    let dropdown = event.target.parentElement.querySelector(".dropdown")
    dropdown.classList.toggle("activate")

    let x = event.target.parentElement.querySelector(".x")
    x.classList.toggle("activate")
    
    console.log("toggle")
}

function registerContentBox(contentBox){
    contentBox.addEventListener("click", dropdown)
}

let contentBoxes = document.querySelectorAll(".contentbox")
contentBoxes.forEach(registerContentBox)

function close(event){

    let x = event.target.parentElement.parentElement.querySelector(".x")
    x.classList.toggle("activate")
    
    let dropdown = event.target.parentElement.parentElement.querySelector(".dropdown")
    dropdown.classList.toggle("activate")
    
    console.log("close")
}

function registerX(x){
    x.addEventListener("click", close)
}

let xs = document.querySelectorAll(".x")
xs.forEach(registerX)

