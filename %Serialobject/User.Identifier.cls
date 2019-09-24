Class User.Identifier Extends %SerialObject
{

Property System As %String;

Property Value As %String;

Storage Default
{
<Data name="IdentifierState">
<Value name="1">
<Value>System</Value>
</Value>
<Value name="2">
<Value>Value</Value>
</Value>
</Data>
<State>IdentifierState</State>
<StreamLocation>^User.IdentifierS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
