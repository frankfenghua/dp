package classes
{
	public class Implementor
	{
		public function Implementor()
		{
		}
		public function OperationImp():String
		{
			// This is where we can choose which concrete implementation is used. 
			return ConcreteImplementorA.OperationImp();
			// return ConcreteImplementorB.OperationImp();
		}
	}
}