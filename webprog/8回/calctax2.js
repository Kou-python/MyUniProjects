function calcTax(prc, r) {
    let h1str = document.getElementById("answer");
    if (r == 10) {
        h1str.style.color = "#ff0000";
        h1str.style.backgroundColor = "#ffcccc";
    } else if (r == 8) {
        h1str.style.color = "#0000ff";
        h1str.style.backgroundColor = "#ccccff";
    } else {
        h1str.style.color = 'black';
        h1str.style.backgroundColor = 'white';
    }
    h1str.innerText = prc + prc * r / 100;
}