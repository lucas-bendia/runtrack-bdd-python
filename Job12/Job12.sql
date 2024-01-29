
mysql> select * from etudiant
    -> where nom in (
    -> select nom from etudiant
    -> group by nom
    -> having count(*) > 1);