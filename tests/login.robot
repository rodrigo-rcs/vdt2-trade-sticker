*** Settings ***
Documentation    Login tests

Resource         ../resources/main.resource  

Test Setup        Start Test
Test Teardown     Finish Test
    

*** Test Cases ***
Deve Logar com sucesso
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil     
    User Logged In  
    
Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials        papito@gmail.com    abc123     
    Tost Message Should Be    Credenciais inválidas, tente novamente!

Senha não preenchida
    Go To Login Page
    Submit Credentials        papito@gmail.com    ${EMPTY}
    Tost Message Should Be    Por favor, informe a sua senha secreta!
Email não preenchido
    Go To Login Page
    Submit Credentials        ${EMPTY}    vaibrasil
    Tost Message Should Be    Por favor, informe o seu email!
    
Nenhuma infomação preenchida
    Go To Login Page
    Submit Credentials        ${EMPTY}    ${EMPTY}
    Tost Message Should Be    Por favor, informe suas credenciais!

#deve utilizar pra pegar o html da pagina no caso de toast
#    Sleep        1
#    ${temp}      Get Page Source
#    Log          ${temp}
 



    