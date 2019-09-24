Class User.Service Extends %RegisteredObject
{

ClassMethod getAll()
{
	d ##Class(User.Dao).all()
	q
}

ClassMethod getPatient(id)
{
	d ##Class(User.Dao).get(id)
	q
}

ClassMethod addPatient()
{
	d ##Class(User.Dao).add()
	Q 1
}

ClassMethod updatePatient(id)
{
	d ##Class(User.Dao).update(id)
	q 1
}

ClassMethod deletePatient(id)
{
	d ##Class(User.Dao).delete(id)
	q
}

}
