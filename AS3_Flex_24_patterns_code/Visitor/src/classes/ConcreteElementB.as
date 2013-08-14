package classes
{
	public class ConcreteElementB implements Element
	{
		public function ConcreteElementB()
		{
		}
		public function Accept(v:Visitor):void
		{
			// Tell the visitor to visit this element.
			v.VisitConcreteElementB(this);
		}
		public function OperationB1():String
		{
			return "Operation B called from Visitor 1.";
		}
		public function OperationB2():String
		{
			return "Operation B called from Visitor 2.";
		}
	}
}