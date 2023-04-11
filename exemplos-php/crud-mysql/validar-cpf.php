<?php
// $cpf = "26400633081";
// validarCpf($cpf);

function validarCpf($cpf){
    $cpf = str_split($cpf);
    $d1 = validarDigito($cpf, 0);
    $d2 = validarDigito($cpf, 1);
    // if($cpf[9] == $d1 && $cpf[10] == $d2){
    //     echo "CPF válido";
    // }else{
    //     echo "CPF inválido";
    // }
    return $cpf[9] == $d1 && $cpf[10] == $d2;
}

function validarDigito($cpf, $d){

    $soma = 0;
    for ($i=0; $i <= (8 + $d); $i++) { 
        // echo $i;
        // echo " - ";
        // echo (10 + $d)-$i;
        // echo " = ";
        $soma += $cpf[$i] * ((10 + $d)-$i);
        // echo $cpf[$i] * ((10 + $d)-$i);
        // echo "<br>";
    }
    // echo $soma;
    $digito = $soma % 11;
    if($digito >= 2){
        $digito = 11 - $digito;
    }else{
        $digito = 0;
    }
    // echo "<br> digito = ";
    // echo $digito;
    // echo "<br>";
    return $digito;
}
?>