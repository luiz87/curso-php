<?php
// Resumo das principais functions de String
// Retorna o comprimento de uma String
echo strlen("Hello world!"),"<br>";

// Conta palavras em uma string
echo str_word_count("Hello world!"),"<br>";

// Inverte uma String
echo strrev("Hello world!"),"<br>";

// Procura um texto dentro de uma string e retorna o posição 
echo strpos("Hello world!", "world"),"<br>";
          // 0123456

// Substitui o texto dentro de uma string
echo str_replace("world", "SENAI", "Hello world!"),"<br>";
?> 