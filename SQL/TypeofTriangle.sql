/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;


/*
Como o SQL avalia isso:

1- Ele testa o primeiro WHEN;
2- Se for TRUE, retorna o THEN correspondente;
3- Se for FALSE, passa para o próximo WHEN;
4- Se nenhum for verdadeiro, cai no ELSE;
5- O END fecha o bloco.
*/