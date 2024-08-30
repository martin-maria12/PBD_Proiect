SET SERVEROUTPUT ON
SET PAGESIZE 500

-- Testare functie pentru afisarea cartilor dupa gen
DECLARE
    v_gen VARCHAR2(255) := 'Fantasy';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Gen carti: ' || v_gen);
    DBMS_OUTPUT.PUT_LINE(get_carti_dupa_gen(v_gen));
END;
/

-- Testare functie pentru afisarea cartilor dupa autor
DECLARE
    v_autor VARCHAR2(255) := 'J.R.R. Tolkien';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Autor: ' || v_autor);
    DBMS_OUTPUT.PUT_LINE(get_carti_dupa_autor(v_autor));
END;
/

-- Testare functie pentru afisarea cartilor disponibile
BEGIN
    DBMS_OUTPUT.PUT_LINE('Carti disponibile: ');
    DBMS_OUTPUT.PUT_LINE(get_carti_disponibile());
END;
/

-- Testare inserare carte
DECLARE
    v_result VARCHAR2(255);
BEGIN
    v_result := insert_pkg.adauga_carte(23, 'F');
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/

-- Testare inserare detalii carte
DECLARE
    v_result VARCHAR2(255);
BEGIN
    v_result := insert_pkg.adauga_detalii_carte(23, 23, '2001: A Space Odyssey', 'Arthur C. Clarke', 'Science Fiction', TO_DATE('01-JAN-1968', 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/

-- Testare inserare membru
DECLARE
    v_result VARCHAR2(255);
BEGIN
    v_result := insert_pkg.adauga_membru(11, 'John Doe', 'Strada Florilor, Nr. 11', '1234567890', 'john.doe@gmail.com', '1234567890123');
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/

-- Testare inserare bibliotecar
DECLARE
    v_result VARCHAR2(255);
BEGIN
    v_result := insert_pkg.adauga_bibliotecar(5, 'Bibliotecar5');
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/

-- Testare inserare imprumut
DECLARE
    v_result VARCHAR2(255);
BEGIN
    v_result := insert_pkg.adauga_imprumut(14, 10, 1, TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), TO_DATE('11-JAN-2023', 'DD-MON-YYYY'), 1);
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/

-- Testare actualizare carte
BEGIN
    update_pkg.update_carte(9, 'F');
END;
/

-- Testare actualizare detalii carte
BEGIN
    update_pkg.update_detalii_carte(23, '2001: A Space OdysseyEDITAT', 'Arthur C. Clarke', 'Science Fiction', TO_DATE('01-JAN-1968', 'DD-MON-YYYY'));
END;
/

-- Testare actualizare membru
BEGIN
    update_pkg.update_membru(1, 'Andrei Gigi', 'Strada Florilor, Nr. 10', '0712345678', 'andrei.gigi@gmail.com', '1960101123456');
END;
/

-- Testare actualizare bibliotecar
BEGIN
    update_pkg.update_bibliotecar(1, 'Bibliotecar1Edit');
END;
/

-- Testare actualizare imprumut
BEGIN
    update_pkg.update_imprumut(14, 10, 1, TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), TO_DATE('11-JAN-2023', 'DD-MON-YYYY'), 5);
END;
/

-- Testare stergere carte cu cascade
BEGIN
    delete_pkg.delete_carte(3, TRUE);
END;
/

-- Testare stergere detalii carte
BEGIN
    delete_pkg.delete_detalii_carte(21);
END;
/

-- Testare stergere membru cu cascade
BEGIN
    delete_pkg.delete_membru(1, TRUE);
END;
/

-- Testare stergere bibliotecar fara cascade
BEGIN
    delete_pkg.delete_bibliotecar(2, FALSE);
END;
/

-- Testare stergere imprumut
BEGIN
    delete_pkg.delete_imprumut(8);
END;
/

-- Testare vizualizare imprumuturi dupa membru
BEGIN
    view_pkg.view_imprumuturi_by_membru(10);
END;
/

-- Testare vizualizare imprumuturi dupa carte
BEGIN
    view_pkg.view_imprumuturi_by_carte(11);
END;
/

-- Testare vizualizare detalii carte dupa carte
BEGIN
    view_pkg.view_detalii_carte_by_carte(5);
END;
/

-- Testare vizualizare imprumuturi dupa bibliotecar
BEGIN
    view_pkg.view_imprumuturi_by_bibliotecar(4);
END;
/

-- Testare cursor pentru verificarea si actualizarea imprumuturilor
BEGIN
    cursor_pkg.verifica_imprumuturi_si_actualizeaza;
END;
/

-- Testare tranzactie pentru inserare carte si detalii carte
DECLARE
    v_result VARCHAR2(255);
BEGIN
    
    v_result := insert_pkg.adauga_carte(23, 'F');
    DBMS_OUTPUT.PUT_LINE(v_result);
    
    v_result := insert_pkg.adauga_detalii_carte(23, 23, '2001: A Space Odyssey', 'Arthur C. Clarke', 'Science Fiction', TO_DATE('01-JAN-1968', 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE(v_result);
     
END;
/

-- Testare tranzactie pentru inserare membru si bibliotecar
DECLARE
    v_result VARCHAR2(255);
BEGIN
    
    v_result := insert_pkg.adauga_membru(11, 'John Doe', 'Strada Florilor, Nr. 11', '1234567890', 'john.doe@gmail.com', '1234567890123');
    DBMS_OUTPUT.PUT_LINE(v_result);
    
    v_result := insert_pkg.adauga_bibliotecar(5, 'Bibliotecar5');
    DBMS_OUTPUT.PUT_LINE(v_result);
    
END;
/

-- Adaugare imprumut pentru o carte care nu exista
DECLARE
    v_mesaj VARCHAR2(300);
BEGIN
    v_mesaj := insert_pkg.adauga_imprumut(
        p_id_imprumut => 26,
        p_carti_id_carte => 99,
        p_membri_id_membru => 1,
        p_data_imprumut => SYSDATE,
        p_data_returnare => SYSDATE + 7,
        p_bibliotecari_id_bibliotecar => 1 
    );
    DBMS_OUTPUT.PUT_LINE(v_mesaj);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Eroare: ' || SQLERRM);
END;
/

-- Adaugarea unui imprumut cu data de returnare mai mica decat data de imprumut
DECLARE
    v_mesaj VARCHAR2(300);
BEGIN
    v_mesaj := insert_pkg.adauga_imprumut(
        p_id_imprumut => 40,
        p_carti_id_carte => 1,
        p_membri_id_membru => 3,
        p_data_imprumut => SYSDATE,
        p_data_returnare => SYSDATE - 7,
        p_bibliotecari_id_bibliotecar => 1 
    );
    DBMS_OUTPUT.PUT_LINE(v_mesaj);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Eroare: ' || SQLERRM);
END;
/
