package classes
{
	import classes.AbstractFactory;
	public class ConcreteFactory1 extends AbstractFactory
	{
		public function ConcreteFactory1()
		{
			super();
		}
		override public function CreateProductA():AbstractProductA
		{
			var productA1:ProductA1 = new ProductA1;
			return productA1;
		}
		override public function CreateProductB():AbstractProductB 
		{
			var productB1:ProductB1 = new ProductB1;
			return productB1;
		}
	}
}