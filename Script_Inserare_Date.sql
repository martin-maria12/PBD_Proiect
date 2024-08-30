SET SERVEROUTPUT ON SIZE UNLIMITED;

-- Adaugare carti
BEGIN
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(1, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(2, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(3, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(4, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(5, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(6, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(7, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(8, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(9, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(10, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(11, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(12, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(13, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(14, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(15, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(16, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(17, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(18, 'F'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(19, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(20, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(21, 'T'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_carte(22, 'T'));

END;
/

-- Adaugare detalii carti
BEGIN
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(1, 1, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', TO_DATE('21-SEP-37', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(2, 2, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', TO_DATE('26-JUN-97', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(3, 3, 'A Game of Thrones', 'George R.R. Martin', 'Fantasy', TO_DATE('06-AUG-96', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(4, 4, 'The Name of the Wind', 'Patrick Rothfuss', 'Fantasy', TO_DATE('27-MAR-07', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(5, 5, 'The Fellowship of the Ring', 'J.R.R. Tolkien', 'Fantasy', TO_DATE('29-JUL-54', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(6, 6, 'Pride and Prejudice', 'Jane Austen', 'Romance', TO_DATE('28-JAN-13', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(7, 7, 'Outlander', 'Diana Gabaldon', 'Romance', TO_DATE('01-JUN-91', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(8, 8, 'The Notebook', 'Nicholas Sparks', 'Romance', TO_DATE('01-OCT-96', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(9, 9, 'Me Before You', 'Jojo Moyes', 'Romance', TO_DATE('05-JAN-21', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(10, 10, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Mistery', TO_DATE('27-AUG-05', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(11, 11, 'Gone Girl', 'Gillian Flynn', 'Mistery', TO_DATE('24-MAY-12', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(12, 12, 'The Da Vinci Code', 'Dan Brown', 'Mistery', TO_DATE('18-MAR-03', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(13, 13, 'Big Little Lies', 'Liane Moriarty', 'Mistery', TO_DATE('29-JUL-14', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(14, 14, 'Treasure Island', 'Robert Louis Stevenson', 'Adventure', TO_DATE('14-NOV-83', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(15, 15, 'Around the World in Eighty Days', 'Jules Verne', 'Adventure', TO_DATE('30-JAN-73', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(16, 16, 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Adventure', TO_DATE('10-DEC-84', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(17, 17, 'Dracula', 'Bram Stoker', 'Horror', TO_DATE('26-MAY-97', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(18, 18, 'Frankenstein', 'Mary Shelley', 'Horror', TO_DATE('01-JAN-18', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(19, 19, 'The Guns of August', 'Barbara W. Tuchman', 'History', TO_DATE('06-JAN-62', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(20, 20, 'The Wright Brothers', 'David McCullough', 'History', TO_DATE('05-MAY-15', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(21, 21, 'Titlu', 'Autor', 'History', TO_DATE('05-MAY-10', 'DD-MON-YY')));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_detalii_carte(22, 22, 'Titlu2', 'Autor2', 'History', TO_DATE('05-MAY-10', 'DD-MON-YY')));
END;
/

-- Adaugare membri
BEGIN
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(1, 'Andrei Popescu', 'Strada Florilor, Nr. 10', '0712345678', 'andrei.popescu@gmail.com', '1960101123456'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(2, 'Maria Ionescu', 'Strada Primaverii, Nr. 22', '0723456789', 'maria.ionescu@gmail.com', '2970202123457'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(3, 'George Marinescu', 'Bulevardul Libertatii', '0734567890', 'george.marinescu@gmail.com', '1950303123458'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(4, 'Elena Vasilescu', 'Strada Marasesti, Nr. 8', '0745678901', 'elena.vasilescu@gmail.com', '2940404123459'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(5, 'Ioan Dumitrescu', 'Strada Unirii, Nr. 30', '0756789012', 'ioan.dumitrescu@gmail.com', '1940505123460'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(6, 'Ana Georgescu', 'Strada Stefan cel Mare', '0767890123', 'ana.georgescu@gmail.com', '2980606123461'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(7, 'Mihai Petrescu', 'Strada Republicii, Nr. 5', '0778901234', 'mihai.petrescu@gmail.com', '1960707123462'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(8, 'Raluca Stan', 'Strada Avram Iancu, Nr. 20', '0789012345', 'raluca.stan@gmail.com', '2990808123463'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(9, 'Adrian Ene', 'Strada Calea Victoriei, Nr. 25', '0790123456', 'adrian.ene@gmail.com', '1980909123464'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_membru(10, 'Simona Grigorescu', 'Strada Gheorghe Doja, Nr. 17', '0710234567', 'simona.grigorescu@gmail.com', '2971010123465'));
END;
/

-- Adaugare bibliotecari
BEGIN
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_bibliotecar(1, 'Bibliotecar1'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_bibliotecar(2, 'Bibliotecar2'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_bibliotecar(3, 'Bibliotecar3'));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_bibliotecar(4, 'Bibliotecar4'));
END;
/

-- Adaugare imprumuturi
BEGIN
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(1, 1, 4, TO_DATE('02-AUG-23', 'DD-MON-YY'), TO_DATE('12-AUG-23', 'DD-MON-YY'), 1));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(2, 2, 2, TO_DATE('11-JAN-24', 'DD-MON-YY'), TO_DATE('21-JAN-24', 'DD-MON-YY'), 1));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(3, 3, 7, TO_DATE('30-MAY-21', 'DD-MON-YY'), TO_DATE('09-JUN-21', 'DD-MON-YY'), 3));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(4, 5, 5, TO_DATE('02-FEB-20', 'DD-MON-YY'), TO_DATE('12-FEB-20', 'DD-MON-YY'), 3));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(5, 9, 10, TO_DATE('13-SEP-18', 'DD-MON-YY'), TO_DATE('23-SEP-18', 'DD-MON-YY'), 2));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(6, 11, 2, TO_DATE('15-JUN-10', 'DD-MON-YY'), TO_DATE('25-JUN-10', 'DD-MON-YY'), 2));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(7, 8, 10, TO_DATE('11-APR-24', 'DD-MON-YY'), TO_DATE('21-APR-24', 'DD-MON-YY'), 4));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(8, 16, 8, TO_DATE('17-MAR-14', 'DD-MON-YY'), TO_DATE('27-MAR-14', 'DD-MON-YY'), 4));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(9, 17, 10, TO_DATE('11-JAN-24', 'DD-MON-YY'), TO_DATE('21-JAN-24', 'DD-MON-YY'), 1));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(10, 19, 1, TO_DATE('02-AUG-23', 'DD-MON-YY'), TO_DATE('12-AUG-23', 'DD-MON-YY'), 1));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(11, 20, 2, TO_DATE('20-MAY-24', 'DD-MON-YY'), TO_DATE('30-MAY-24', 'DD-MON-YY'), 3));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(12, 21, 2, TO_DATE('01-MAY-24', 'DD-MON-YY'), TO_DATE('11-MAY-24', 'DD-MON-YY'), 3));
    DBMS_OUTPUT.PUT_LINE(insert_pkg.adauga_imprumut(13, 22, 2, TO_DATE('14-MAR-24', 'DD-MON-YY'), TO_DATE('24-MAY-24', 'DD-MON-YY'), 3));
END;
/
