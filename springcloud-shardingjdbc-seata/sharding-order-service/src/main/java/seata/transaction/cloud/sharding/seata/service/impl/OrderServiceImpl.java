package seata.transaction.cloud.sharding.seata.service.impl;

import seata.transaction.cloud.sharding.seata.dao.OrderDAO;
import seata.transaction.cloud.sharding.seata.domain.Order;
import seata.transaction.cloud.sharding.seata.service.OrderService;
import org.apache.shardingsphere.transaction.annotation.ShardingTransactionType;
import org.apache.shardingsphere.transaction.core.TransactionType;
import org.apache.shardingsphere.transaction.core.TransactionTypeHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDAO orderDAO;

    @Override
    @ShardingTransactionType(TransactionType.BASE)
    public String addOrder(Order order) {
        //TransactionTypeHolder.set(TransactionType.BASE);
        orderDAO.insert(order);
        return "success";
    }

    @Override
    public List<Order> getOrder() {
        return orderDAO.getOrder();
    }
}
