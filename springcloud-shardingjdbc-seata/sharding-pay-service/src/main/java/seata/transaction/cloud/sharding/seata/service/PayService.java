package seata.transaction.cloud.sharding.seata.service;

import seata.transaction.cloud.sharding.seata.domain.Pay;

import java.util.List;

public interface PayService {

    String pay(Pay pay);
    List<Pay> getPay();
}
