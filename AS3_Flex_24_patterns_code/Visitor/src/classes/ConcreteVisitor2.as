package classes
{
	import mx.collections.ArrayCollection;
	
	public class ConcreteVisitor2 implements Visitor
	{
		public var data:ArrayCollection;
		public function ConcreteVisitor2()
		{
			data = new ArrayCollection();
		}
		public function VisitConcreteElementA(cea:ConcreteElementA):void
		{
			// Because this is Visitor2, call A2.
			data.addItem(cea.OperationA2());
		}
		public function VisitConcreteElementB(ceb:ConcreteElementB):void
		{
			// Because this is Visitor2, call B2.
			data.addItem(ceb.OperationB2());
		}
	}
}