package seata.transaction.cloud.sharding.seata.dao;

import seata.transaction.cloud.sharding.seata.domain.Pay;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PayDAO {

    @Insert("insert into t_pay(money, user_id) values(#{money}, #{userId})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(Pay pay);

    @Select("select * from t_pay")
    List<Pay> getPay();
}
