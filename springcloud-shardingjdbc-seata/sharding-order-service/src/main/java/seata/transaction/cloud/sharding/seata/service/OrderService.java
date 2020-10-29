package seata.transaction.cloud.sharding.seata.service;

import seata.transaction.cloud.sharding.seata.domain.Order;

import java.util.List;

public interface OrderService {

    String addOrder(Order order);

    List<Order> getOrder();
}
