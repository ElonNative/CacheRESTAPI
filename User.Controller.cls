Class User.Controller Extends %CSP.REST
{

Parameter CHARSET = "utf-8";

Parameter CONTENTTYPE = "application/json";

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<Route Url="/pat/all" Method="GET" Call="User.Service:getAll" />
<Route Url="/pat/:id" Method="GET" Call="User.Service:getPatient"/>
<Route Url="/pat/add" Method="POST" Call="User.Service:addPatient"/>
<Route Url="/pat/upd/:id" Method="PUT" Call="User.Service:updatePatient"/>
<Route Url="/pat/del/:id" Method="DELETE" Call="User.Service:deletePatient"/>
</Routes>
}

}
