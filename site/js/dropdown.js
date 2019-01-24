function dropdown(event){
    let dropdown = event.target.parentElement.querySelector(".dropdown")
    dropdown.classList.toggle("activate")
    // document.write("works");
}

function registerContentBox(contentBox){
    contentBox.addEventListener("click", dropdown)
}

let contentBoxes = document.querySelectorAll(".contentbox")
contentBoxes.forEach(registerContentBox)