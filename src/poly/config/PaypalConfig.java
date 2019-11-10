package poly.config;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.OAuthTokenCredential;
import com.paypal.base.rest.PayPalRESTException;
@Configuration
public class PaypalConfig {
	
	@Value("AeWtzEUV7lfozi84IWtChtwzK4XyZSMMSTXtRYoyHbRPxgdLbCczAqA9cJNq8B82dp2qtD_idzf8xIiR")
    private String clientId;
	@Value("ECu9t4mKplJzukjIa-U7vr4wwxb-WMF4hHwvXzz6F5iHUTk9SKI7rkw6t2PnVwxqdYe4G1Y9lj6_GQNb")
    private String clientSecret;
	@Value("sandbox")
    private String mode;
    
	@Bean
	public Map<String, String> paypalSdkConfig(){
		Map<String, String> sdkConfig = new HashMap<>();
		sdkConfig.put("mode", mode);
		return sdkConfig;
	}
	
	@Bean
	public OAuthTokenCredential authTokenCredential(){
		return new OAuthTokenCredential(clientId, clientSecret, paypalSdkConfig());
	}
	
	@Bean
	public APIContext apiContext() throws PayPalRESTException{
		APIContext apiContext = new APIContext(authTokenCredential().getAccessToken());
		apiContext.setConfigurationMap(paypalSdkConfig());
		return apiContext;
	}
}
