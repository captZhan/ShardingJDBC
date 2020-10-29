package seata.transaction.cloud.sharding.seata.dao;

import seata.transaction.cloud.sharding.seata.domain.Order;
import seata.transaction.cloud.sharding.seata.domain.Pay;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderDAO {

    @Insert("insert into t_order(t_pay_id, user_id) values(#{tPayId}, #{userId})")
    int insert(Order order);


    @Select("select * from t_order")
    List<Order> getOrder();
}
