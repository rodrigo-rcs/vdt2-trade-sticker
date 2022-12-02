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

#    Sleep        1
#    ${temp}      Get Page Source
#    Log          ${temp}
 



    