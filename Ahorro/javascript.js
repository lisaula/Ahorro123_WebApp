function checkInput(textbox) {
    var input = document.getElementById(textbox);
    input.setAttribute('value', input.value);
    console.log(input.value);
}