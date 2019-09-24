Class User.Dao Extends %RegisteredObject
{

ClassMethod all()
{
    	f i=1:1:$g(^User.ModelD){
	 	s tData=##Class(User.Model).%OpenId(i)
	 	continue:'$d(^User.ModelD(i))
	 	S jData=##Class(%DynamicObject).%New()
	 	s jData.ResourceType=tData.ResourceType
	 	s jData.Id=tData.Id
	 	s jData.Meta=##Class(%DynamicObject).%New()
	 	s jData.Meta.VersionId=tData.Meta.VersionId
	 	s jData.Meta.LastUpdated=tData.Meta.LastUpdated
	 	s jData.Identifier=##Class(%DynamicArray).%New()
	 	s jData.Identifier."0"=##Class(%DynamicObject).%New()
	 	s jData.Identifier."0".System=tData.Identifier.System
	 	s jData.Identifier."0".Value=tData.Identifier.Value
	 	s jData.Name=##Class(%DynamicArray).%New()
	 	s jData.Name."0"=##Class(%DynamicObject).%New()
	 	s jData.Name."0".Family=tData.Name.Family
	 	s jData.Name."0".Given=##Class(%DynamicArray).%New()
	 	s jData.Name."0".Given."0"=tData.Name.Given
	 	s jData.Gender=tData.Gender
	 	s jData.BirthDate=tData.BirthDate
	 	s jData.Address=##Class(%DynamicArray).%New()
	 	s jData.Address."0"=##Class(%DynamicObject).%New()
	 	s jData.Address."0".Line=##Class(%DynamicArray).%New()
	 	s jData.Address."0".Line."0"=tData.Address.Line
	 	s jData.Address."0".City=tData.Address.City
	 	s jData.Address."0".State=tData.Address.State
	 	s jData.Address."0".PostalCode=tData.Address.PostalCode
	 	w jData.%ToJSON(),!
	 	}
}

ClassMethod get(id)
{
		s tData=##Class(User.Model).%OpenId(id)
	 	S jData=##Class(%DynamicObject).%New()
	 	s jData.ResourceType=tData.ResourceType
	 	s jData.Id=tData.Id
	 	s jData.Meta=##Class(%DynamicObject).%New()
	 	s jData.Meta.VersionId=tData.Meta.VersionId
	 	s jData.Meta.LastUpdated=tData.Meta.LastUpdated
	 	s jData.Identifier=##Class(%DynamicArray).%New()
	 	s jData.Identifier."0"=##Class(%DynamicObject).%New()
	 	s jData.Identifier."0".System=tData.Identifier.System
	 	s jData.Identifier."0".Value=tData.Identifier.Value
	 	s jData.Name=##Class(%DynamicArray).%New()
	 	s jData.Name."0"=##Class(%DynamicObject).%New()
	 	s jData.Name."0".Family=tData.Name.Family
	 	s jData.Name."0".Given=##Class(%DynamicArray).%New()
	 	s jData.Name."0".Given."0"=tData.Name.Given
	 	s jData.Gender=tData.Gender
	 	s jData.BirthDate=tData.BirthDate
	 	s jData.Address=##Class(%DynamicArray).%New()
	 	s jData.Address."0"=##Class(%DynamicObject).%New()
	 	s jData.Address."0".Line=##Class(%DynamicArray).%New()
	 	s jData.Address."0".Line."0"=tData.Address.Line
	 	s jData.Address."0".City=tData.Address.City
	 	s jData.Address."0".State=tData.Address.State
	 	s jData.Address."0".PostalCode=tData.Address.PostalCode
	 	w jData.%ToJSON(),!
}

ClassMethod add()
{
		
		s tData=##Class(User.Model).%New()	
		s jData=##Class(User.Model).getJSON()
		s tData.ResourceType=jData.ResourceType
		s tData.Id=jData.Id
		s tData.Meta.VersionId=jData.Meta.VersionId
		s tData.Meta.LastUpdated=jData.Meta.LastUpdated
		s tData.Identifier.System=jData.Identifier."0".System
		s tData.Identifier.Value=jData.Identifier."0".Value
		s tData.Name.Family=jData.Name."0".Family
		s tData.Name.Given=jData.Name."0".Given."0"
		s tData.Gender=jData.Gender
		s tData.BirthDate=jData.BirthDate
		s tData.Address.Line=jData.Address."0".Line."0"
		s tData.Address.City=jData.Address."0".City
		s tData.Address.State=jData.Address."0".State
		s tData.Address.PostalCode=jData.Address."0".PostalCode
		d tData.%Save()
}

ClassMethod update(id)
{
	
		s jData=##Class(User.Model).getJSON()
		s tData=##Class(User.Model).%OpenId(id)
		s tData.ResourceType=jData.ResourceType
		s tData.Id=jData.Id
		s tData.Meta.VersionId=jData.Meta.VersionId
		s tData.Meta.LastUpdated=jData.Meta.LastUpdated
		s tData.Identifier.System=jData.Identifier."0".System
		s tData.Identifier.Value=jData.Identifier."0".Value
		s tData.Name.Family=jData.Name."0".Family
		s tData.Name.Given=jData.Name."0".Given."0"
		s tData.Gender=jData.Gender
		s tData.BirthDate=jData.BirthDate
		s tData.Address.Line=jData.Address."0".Line."0"
		s tData.Address.City=jData.Address."0".City
		s tData.Address.State=jData.Address."0".State
		s tData.Address.PostalCode=jData.Address."0".PostalCode
		q tData.%Save()
}

ClassMethod delete(id)
{
	d ##Class(User.Model).%DeleteId(id)
	q
}

}
