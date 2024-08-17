CREATE TABLE dadosrio(
cisp int,
mes int,
ano int,
mes_ano varchar(100),
aisp int,
risp int,
munic varchar(100),
mcirc varchar(100),
regiao varchar(100),
hom_doloso int,
lesao_corp_morte int,
latrocinio int,
cvli int,
hom_por_interv_policial int,
letalidade_violenta int,
tentat_hom int,
lesao_corp_dolosa int,
estupro int,
hom_culposo int,
lesao_corp_culposa int,
roubo_transeunte int,
roubo_celular int,
roubo_em_coletivo int,
roubo_rua int,
roubo_veiculo int,
roubo_carga int,
roubo_comercio int,
roubo_residencia int,
roubo_banco int,
roubo_cx_eletronico int,
roubo_conducao_saque int,
roubo_apos_saque int,
roubo_bicicleta int,
outros_roubos int,
total_roubos int,
furto_veiculos int,
furto_transeunte int,
furto_coletivo int,
furto_celular int,
furto_bicicleta int,
outros_furtos int,
total_furtos int,
sequestro int,
extorsao int,
sequestro_relampago int,
estelionato int,
apreensao_drogas int,
posse_drogas int,
trafico_drogas int,
apreensao_drogas_sem_autor int,
recuperacao_veiculos int,
apf int,
aaapai int,
cmp int,
cmba int,
ameaca int,
pessoas_desaparecidas int,
encontro_cadaver int,
encontro_ossada int,
pol_militares_mortos_serv int,
pol_civis_mortos_serv int,
registro_ocorrencias int,
fase int
);

copy public.dadosrio
from 'C:\BaseDPEvolucaoMensalCisp.csv'
delimiter ';'
csv header
encoding 'windows-1251';

create table regiao(
	RISP int,
	AISP int,
	CISP int,
	unidade_territorial varchar(400),
	municipio varchar(400),
	região_governo varchar(400)
);

copy public.regiao
from 'C:\Relacao_RISPxAISPxCISP.csv'
delimiter ';'
csv header
encoding 'windows-1251';

