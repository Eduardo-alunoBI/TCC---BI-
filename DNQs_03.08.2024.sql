ALTER TABLE dim_delegacia
RENAME COLUMN elt_dt_inicio TO etl_dt_inicio;

ALTER TABLE dim_delegacia
RENAME COLUMN elt_dt_fim TO etl_dt_fim;

Insert into dim_bairro(sk_bairro,nk_bairro,nm_bairro,nm_cidade,etl_dt_inicio,etl_dt_fim,etl_versao)
	VALUES (0,0,'N/A','N/A','1900-01-01','2199-12-31',0);

Insert into dim_crime(sk_crime,nk_crime,transeunte,celular,veiculo,rua,residencia,etl_dt_inicio,etl_dt_fim,etl_versao)
	VALUES (0,0,0,0,0,0,0,'1900-01-01','2199-12-31',0);
	
Insert into dim_delegacia(sk_delegacia,nk_delegacia,nm_cisp,nm_risp,nm_aisp,etl_dt_inicio,etl_dt_fim,etl_versao)
	VALUES (0,0,'N/A','N/A','N/A','1900-01-01','2199-12-31',0);	

Insert into dim_data(sk_data,nk_data,nm_mes,nm_mes_ano,etl_dt_inicio,etl_dt_fim,etl_versao)
	VALUES (0,0,0,'N/A','1900-01-01','2199-12-31',0);