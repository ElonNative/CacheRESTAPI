Class User.Model Extends %Persistent
{

Property ResourceType As %String;

Property Id As %String;

Property Identifier As Identifier;

Property Name As Name;

Property Gender As %String;

Property BirthDate As %String;

Property Address As Address;

Property Meta As Meta;

ClassMethod getJSON() As %DynamicObject
{
	s ot=##Class(%DynamicObject).%FromJSON(%request.Content)
	return ot
}

Storage Default
{
<Data name="ModelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceType</Value>
</Value>
<Value name="3">
<Value>Id</Value>
</Value>
<Value name="4">
<Value>Identifier</Value>
</Value>
<Value name="5">
<Value>Name</Value>
</Value>
<Value name="6">
<Value>Gender</Value>
</Value>
<Value name="7">
<Value>BirthDate</Value>
</Value>
<Value name="8">
<Value>Address</Value>
</Value>
<Value name="9">
<Value>Meta</Value>
</Value>
</Data>
<DataLocation>^User.ModelD</DataLocation>
<DefaultData>ModelDefaultData</DefaultData>
<IdLocation>^User.ModelD</IdLocation>
<IndexLocation>^User.ModelI</IndexLocation>
<StreamLocation>^User.ModelS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
