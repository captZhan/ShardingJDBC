package seata.transaction.cloud.sharding.seata.domain;

import feign.RequestInterceptor;
import feign.RequestTemplate;
import io.seata.core.context.RootContext;
import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Configuration;

//将seata的xid手动添加到feign请求头上
//@Configuration
public class FeignConfig2 implements RequestInterceptor {
    @Override
    public void apply(RequestTemplate requestTemplate) {

        String xid = RootContext.getXID();
        if (StringUtils.isNotBlank(xid)) {
			System.out.println("feign 获得分布式事务xid："+xid);
		}

        requestTemplate.header("TX_XID", xid);
    }
}