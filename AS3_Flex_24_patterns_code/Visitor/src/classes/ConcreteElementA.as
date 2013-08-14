package classes
{
	public class ConcreteElementA implements Element
	{
		public function ConcreteElementA()
		{
		}
		public function Accept(v:Visitor):void
		{
			// Tell the visitor to visit this element.
			v.VisitConcreteElementA(this);
		}
		public function OperationA1():String
		{
			return "Operation A called from Visitor 1.";
		}
		public function OperationA2():String
		{
			return "Operation A called from Visitor 2.";
		}
	}
}