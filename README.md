# ShardingJDBC
需要自己配置数据库主从

读写分离,分库分表以及用seata解决分布式事务 
需要seata的基础知识 本测试项目使用的seata版本为1.2 
采用的是源码方式启动
启动seata源码里面server模块的 server类的main方法
注意  要自己修改seata里面的file.conf  以及 registy.conf
或者自己下载seata
http://seata.io/zh-cn/docs/user/quickstart.html
修改file.conf  中的db中的属性  kpi_database_address为你的数据库ip 或者在hosts里面配置
修改registy.conf 中的 eureka的 serviceUrl 属性 为你的eureka ip 或者在hosts里面配置
