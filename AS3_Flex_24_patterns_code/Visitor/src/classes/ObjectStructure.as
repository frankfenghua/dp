package classes
{
	import mx.collections.ArrayCollection;

	public class ObjectStructure extends ArrayCollection
	{
		public function ObjectStructure(source:Array=null)
		{
			super
			(
				[
					new ConcreteElementA(),
					new ConcreteElementB()
				]
			);
		}
	}
}