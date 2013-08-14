package classes
{
	import mx.collections.ArrayCollection;
	
	public class ConcreteVisitor1 implements Visitor
	{
		public var data:ArrayCollection;
		public function ConcreteVisitor1()
		{
			data = new ArrayCollection();
		}
		public function VisitConcreteElementA(cea:ConcreteElementA):void
		{
			// Because this is Visitor1, call A1.
			data.addItem(cea.OperationA1());
		}
		public function VisitConcreteElementB(ceb:ConcreteElementB):void
		{
			// Because this is Visitor1, call B1.
			data.addItem(ceb.OperationB1());
		}
	}
}