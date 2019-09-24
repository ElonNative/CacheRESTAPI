Class User.Name Extends %SerialObject
{

Property Family As %String;

Property Given As %String;

Storage Default
{
<Data name="NameState">
<Value name="1">
<Value>Family</Value>
</Value>
<Value name="2">
<Value>Given</Value>
</Value>
</Data>
<State>NameState</State>
<StreamLocation>^User.NameS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
