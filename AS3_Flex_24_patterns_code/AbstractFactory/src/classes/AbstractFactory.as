package classes
{
	public class AbstractFactory
	{
		public function AbstractFactory()
		{
		}
		public function CreateProductA():AbstractProductA 
		{
			var abstractProductA:AbstractProductA = new AbstractProductA;
			return abstractProductA;
		}
		public function CreateProductB():AbstractProductB 
		{
			var abstractProductB:AbstractProductB = new AbstractProductB;
			return abstractProductB;
		}
	}
}