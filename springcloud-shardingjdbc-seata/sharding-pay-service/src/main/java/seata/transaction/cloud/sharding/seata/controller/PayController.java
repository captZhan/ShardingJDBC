package seata.transaction.cloud.sharding.seata.controller;

import seata.transaction.cloud.sharding.seata.domain.Pay;
import seata.transaction.cloud.sharding.seata.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class PayController {
    @Autowired
    private PayService payService;

    @PostMapping("pay")
    public String pay(@RequestBody Pay pay) {
        return payService.pay(pay);
    }


   @GetMapping("getPay")
   @ResponseBody
    public List<Pay> getPay() {
        return payService.getPay();
    }

}
