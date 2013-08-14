package classes
{
	import classes.*
	public class ConcreteCreator2 extends Creator
	{
		public function ConcreteCreator2()
		{
			super();
		}
		override public function FactoryMethod():Product
		{
			return new ConcreteProduct2();
		}
	}
}