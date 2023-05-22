CREATE or replace FUNCTION selamlama(x TEXT) RETURNS TEXT
AS
$$
BEGIN
RETURN 'Merhaba '|| x ||', nasılsın?';
END;
$$
LANGUAGE plpgsql;-- Prosudual Language Postgresql

SELECT selamlama('Ali');