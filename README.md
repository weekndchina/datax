# datax
## 表映射关系表
- stan_org(机构商户信息)
源表:tbl_core_merchant
目标表:load_org
抽取方式:FULL
抽取条件:mid not like '1%'
- stan_cert(商户证件信息)
源表:tbl_core_merchant,qrc_mer_base_info
目标表:load_cert
抽取方式:FULL
抽取条件:
- stan_address(商户地址信息)
源表:tbl_core_merchant,qrc_mer_base_info
目标表:load_address
抽取方式:FULL
抽取条件:
- stan_tel(手机,电话信息)
源表:tbl_core_merchant
目标表:load_tel
抽取方式:FULL
抽取条件:
- stan_stif(交易信息)
源表:tbl_core_postrans_nor
目标表:load_stif
抽取方式:Increment
抽取条件:time=sysdate-1(抽取前一天的数据)
- stan_time
源表:dual
目标表:load_time
抽取方式:FULL
抽取条件:date_dt=sysdate(抽取当天的时间)
- stan_person(个人信息)
源表:tbl_core_merchant
目标表:load_person
抽取方式:FULL
抽取条件:mid like '1%'

