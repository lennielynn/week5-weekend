CREATE PROCEDURE changeAddress(_sales_c_id INTEGER, _address VARCHAR)
AS $$
	BEGIN
		UPDATE sales_customer
		SET address = _address
		WHERE sales_c_id = _sales_c_id;
		COMMIT;
	END
$$ LANGUAGE plpgsql;

CALL changeAddress(1, '245 Notorious B.I.G. ln. brooklyn NY');

SELECT * FROM sales_customer 