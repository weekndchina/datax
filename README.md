# datax
## 表映射关系表
- **stan_org(机构商户信息)**
</br>源表:tbl_core_merchant
</br>目标表:load_org
</br>抽取方式:FULL
</br>抽取条件:mid not like '1%'
- **stan_cert(商户证件信息)**
</br>源表:tbl_core_merchant,qrc_mer_base_info
</br>目标表:load_cert
</br>抽取方式:FULL
</br>抽取条件:
- **stan_address(商户地址信息)**
</br>源表:tbl_core_merchant,qrc_mer_base_info
</br>目标表:load_address
</br>抽取方式:FULL
</br>抽取条件:
- **stan_tel(手机,电话信息)**
</br>源表:tbl_core_merchant
</br>目标表:load_tel
</br>抽取方式:FULL
</br>抽取条件:
- **stan_stif(交易信息)**
</br>源表:tbl_core_postrans_nor
</br>目标表:load_stif
</br>抽取方式:Increment
</br>抽取条件:time=sysdate-1(抽取前一天的数据)
- **stan_time(抽取时间)**
</br>源表:dual
</br>目标表:load_time
</br>抽取方式:Increment
</br>抽取条件:date_dt=sysdate(抽取当天的时间)
- **stan_person(个人信息)**
</br>源表:tbl_core_merchant
</br>目标表:load_person
</br>抽取方式:FULL
</br>抽取条件:mid like '1%'

## 日志
- **查看日志**
</br>more /root/datax.log
- **格式**
</br>Job Name    :抽取作业名称
</br>Job start at:作业开始时间
</br>Job end at  :作业结束时间
</br>Cost        :ETL抽取消耗时长
</br>Result      :ETL Job执行结果

