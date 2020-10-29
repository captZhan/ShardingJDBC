# ShardingJDBC
读写分离,分库分表以及用seata解决分布式事务
需要seata的基础知识  http://seata.io/zh-cn/docs/user/quickstart.html
修改file.conf  中的db中的属性  kpi_database_address为你的数据库ip 或者在hosts里面配置
修改registy.conf 中的 eureka的 serviceUrl 属性 为你的eureka ip 或者在hosts里面配置
