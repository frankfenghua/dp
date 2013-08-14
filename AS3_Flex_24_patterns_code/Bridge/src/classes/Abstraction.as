package classes
{
	public class Abstraction
	{
		public function Abstraction()
		{
		}
		public function Operation():String
		{
			// Create an Implementor and ask it to perform the operation.
			var imp:Implementor = new Implementor();
			return imp.OperationImp();
		}
	}
}