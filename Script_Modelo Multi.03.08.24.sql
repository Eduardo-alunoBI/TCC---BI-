
CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL,
                nk_data INTEGER NOT NULL,
                nm_mes INTEGER NOT NULL,
                nm_ano INTEGER NOT NULL,
                nm_mes_ano VARCHAR(50) NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                etl_versao INTEGER NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_data)
);


CREATE TABLE public.dim_crime (
                sk_crime INTEGER NOT NULL,
                nk_crime INTEGER NOT NULL,
                transeunte INTEGER NOT NULL,
                celular INTEGER NOT NULL,
                veiculo INTEGER NOT NULL,
                rua INTEGER NOT NULL,
                residencia INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                etl_versao INTEGER NOT NULL,
                CONSTRAINT sk_crime PRIMARY KEY (sk_crime)
);


CREATE TABLE public.dim_bairro (
                sk_bairro INTEGER NOT NULL,
                nk_bairro INTEGER NOT NULL,
                nm_bairro VARCHAR(500) NOT NULL,
                nm_cidade VARCHAR(500) NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                etl_versao INTEGER NOT NULL,
                CONSTRAINT sk_bairro PRIMARY KEY (sk_bairro)
);


CREATE SEQUENCE public.dim_delegacia_sk_delegacia_seq;

CREATE TABLE public.dim_delegacia (
                sk_delegacia INTEGER NOT NULL DEFAULT nextval('public.dim_delegacia_sk_delegacia_seq'),
                nk_delegacia INTEGER NOT NULL,
                nm_cisp VARCHAR(10) NOT NULL,
                nm_risp VARCHAR(10) NOT NULL,
                nm_aisp VARCHAR(10) NOT NULL,
                elt_dt_inicio DATE NOT NULL,
                elt_dt_fim DATE NOT NULL,
                etl_versao INTEGER NOT NULL,
                CONSTRAINT sk_delegacia PRIMARY KEY (sk_delegacia)
);


ALTER SEQUENCE public.dim_delegacia_sk_delegacia_seq OWNED BY public.dim_delegacia.sk_delegacia;

CREATE TABLE public.ft_seguranca (
                sk_delegacia INTEGER NOT NULL,
                sk_bairro INTEGER NOT NULL,
                sk_data INTEGER NOT NULL,
                sk_crime INTEGER NOT NULL
);


ALTER TABLE public.ft_seguranca ADD CONSTRAINT dim_data_ft_seguranca_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_seguranca ADD CONSTRAINT dim_crime_ft_seguranca_fk
FOREIGN KEY (sk_crime)
REFERENCES public.dim_crime (sk_crime)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_seguranca ADD CONSTRAINT dim_bairro_ft_seguranca_fk
FOREIGN KEY (sk_bairro)
REFERENCES public.dim_bairro (sk_bairro)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_seguranca ADD CONSTRAINT dim_delegacia_ft_seguranca_fk
FOREIGN KEY (sk_delegacia)
REFERENCES public.dim_delegacia (sk_delegacia)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
