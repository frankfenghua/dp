package classes
{
	import classes.*
	public class ConcreteCreator1 extends Creator
	{
		public function ConcreteCreator1()
		{
			super();
		}
		override public function FactoryMethod():Product
		{
			return new ConcreteProduct1();
		}
	}
}