public class newpage {
    public String getInit() {
    
        return 'Bharath';
    }
      
    public Object getForecast() {
    AggregateResult[] sumforecast
  = [SELECT Sum(Quota)aver FROM RevenueForecast];
Object sumAmount = sumforecast[0].get('aver');
    return sumAmount;
    }
}