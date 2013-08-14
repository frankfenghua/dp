package classes
{
	import classes.AbstractFactory;
	public class ConcreteFactory2 extends AbstractFactory
	{
		public function ConcreteFactory2()
		{
			super();
		}
		override public function CreateProductA():AbstractProductA
		{
			var productA2:ProductA2 = new ProductA2;
			return productA2;
		}
		override public function CreateProductB():AbstractProductB 
		{
			var productB2:ProductB2 = new ProductB2;
			return productB2;
		}
	}
}