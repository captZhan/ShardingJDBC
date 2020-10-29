package seata.transaction.cloud.sharding.seata.service.impl;

import seata.transaction.cloud.sharding.seata.dao.PayDAO;
import seata.transaction.cloud.sharding.seata.domain.Order;
import seata.transaction.cloud.sharding.seata.domain.Pay;
import seata.transaction.cloud.sharding.seata.feign.OrderFeign;
import seata.transaction.cloud.sharding.seata.service.PayService;
import io.seata.spring.annotation.GlobalTransactional;
import org.apache.shardingsphere.transaction.annotation.ShardingTransactionType;
import org.apache.shardingsphere.transaction.core.TransactionType;
import org.apache.shardingsphere.transaction.core.TransactionTypeHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PayServiceImpl implements PayService {

    @Autowired
    private PayDAO payDAO;
    @Autowired
    private OrderFeign orderFeign;

    @GlobalTransactional
    @Override
    //在调用db时设置，可以对事务类型进行切换
    //其他服务中也需要配置
    @ShardingTransactionType(TransactionType.BASE)
    public String pay(Pay pay){


        payDAO.insert(pay);

        Order order = new Order();
        order.setTPayId(pay.getId());
        order.setUserId(pay.getUserId());
        orderFeign.addOrder(order);
        //模拟异常
        //int i = 1/0;
        return "success";
    }

    @Override
    public List<Pay> getPay() {
        return payDAO.getPay();
    }
}
