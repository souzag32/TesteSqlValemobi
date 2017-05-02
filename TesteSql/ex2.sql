--2)

Insert into tb_customer (id_customer, nm_customer, cpf_cnpj) 
		Values (Next Value for tb_customer_id_customer_seq, 
			'Joãozinho Silva', 88877766655);

Insert into tb_dm_address_type (cd_address_type, ds_address_type)
		Values ('R','Residencial');

Insert into tb_customer_address (id_customer, cd_address_type,
					 street, lot, references, zip_code)
		Values ((Select Max(id_customer) from tb_customer),
			'R',
			'Rua das Flores', 
			1,
			'', 
			'01234-567');

Insert into tb_dm_address_type (cd_address_type, ds_address_type)
		Values ('C','Comercial');

Insert into tb_customer_address (id_customer, cd_address_type,
					 street, lot, references, zip_code)
		Values ((Select Max(id_customer) from tb_customer),
			'C',
			'Rua das Pedras', 
			100,
			'Conjunto 200', 
			'01234-567');