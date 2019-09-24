Class User.Address Extends %SerialObject
{

Property Line As %String;

Property City As %String;

Property State As %String;

Property PostalCode As %String;

Storage Default
{
<Data name="AddressState">
<Value name="1">
<Value>Line</Value>
</Value>
<Value name="2">
<Value>City</Value>
</Value>
<Value name="3">
<Value>State</Value>
</Value>
<Value name="4">
<Value>PostalCode</Value>
</Value>
</Data>
<State>AddressState</State>
<StreamLocation>^User.AddressS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
