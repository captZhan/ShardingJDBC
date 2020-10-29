package seata.transaction.cloud.sharding.seata.feign;

import seata.transaction.cloud.sharding.seata.domain.Order;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name = "sharding-order-service")
public interface OrderFeign {

    @PostMapping("addOrder")
    String addOrder(@RequestBody Order order);
}
