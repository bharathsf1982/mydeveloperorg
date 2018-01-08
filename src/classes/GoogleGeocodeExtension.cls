public class GoogleGeocodeExtension {
    private final Account acct;

public GoogleGeocodeExtension (ApexPages.StandardController stdController) {
this.acct = (Account)stdController.getRecord();
}
public string[] Coordinates
{
get
{
if (Coordinates == null)
{
Account myAccount = [select name,billingstreet,billingcity,billingstate,billingpostalcode from Account where id=:acct.id];
String url = 'http://maps.google.com/maps/geo?';
url += 'q=' + EncodingUtil.urlEncode(myAccount.BillingStreet,'UTF-8') + ',' + EncodingUtil.urlEncode(myAccount.BillingCity,'UTF-8') + ',' + myAccount.BillingState;
url += '&output=csv&key=ABQIAAAAzr2EBOXUKnm_jVnk0OJI7xSosDVG8KKPE1-m51RBrvYughuyMxQ-i1QfUnH94QxWIa6N4U6MouMmBA';

    Http h = new Http();
    HttpRequest req = new HttpRequest();

req.setHeader('Content-type', 'application/x-www-form-urlencoded');
req.setHeader('Content-length', '0');
req.setEndpoint(url);
req.setMethod('POST');

HttpResponse res = h.send(req);
String responseBody = res.getBody();
Coordinates = responseBody.split(',',0);
}
return Coordinates;
}
set;
}
public string CoordinateLat { get { return Coordinates[2]; } }
public string CoordinateLong { get { return Coordinates[3]; } }
}