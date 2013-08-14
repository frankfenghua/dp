package classes
{
	public class ConcretePrototype2 extends Prototype
	{
		public function ConcretePrototype2()
		{
			super();
			productType = "Concrete Prototype 2";
		}
		override public function Clone():Prototype
		{
			return new ConcretePrototype2();
		}
	}
}