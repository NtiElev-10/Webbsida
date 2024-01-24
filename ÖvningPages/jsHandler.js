function doCalc(){
    let num1 = document.getElementById("num1").value;
    let num2 = document.getElementById("num2").value;
    let operator = document.getElementById("operator").value;

    if(operator == "+"){
        document.getElementById("res").innerHTML = "Add) --> " + num1 + " + " + num2 + " = " + (+num1 + +num2);
    }
    else if(operator == "-"){
        document.getElementById("res").innerHTML = "Sub) --> " + num1 + " - " + num2 + " = " + (+num1 - +num2);
    }
    else if(operator == "*"){
        document.getElementById("res").innerHTML = "Mul) --> " + num1 + " * " + num2 + " = " + (+num1 * +num2);
    }
    else{
        document.getElementById("res").innerHTML = "Div) --> " + num1 + " / " + num2 + " = " + (+num1 / +num2);
    }

    // skapa ett objekt bara för att

    const objekt = {
        para1:"hej",
        para2:"hej"
    }
}