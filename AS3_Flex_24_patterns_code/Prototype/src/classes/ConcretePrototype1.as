package classes
{
	public class ConcretePrototype1 extends Prototype
	{
		public function ConcretePrototype1()
		{
			super();
			productType = "Concrete Prototype 1";
		}
		override public function Clone():Prototype
		{
			return new ConcretePrototype1();
		}
	}
}