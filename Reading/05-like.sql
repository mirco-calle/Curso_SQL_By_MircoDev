select * from users where email like '%gmail.com'; --el % se pone cuando sabeque que existe otros caracteres antes de los solicitado
select * from users where email like 'brais%'; --el % cuando sabes que hay caracteres despues 
select * from users where email like '%gmail%' -- o puede haber caraceres antes y despues d elo solicitado