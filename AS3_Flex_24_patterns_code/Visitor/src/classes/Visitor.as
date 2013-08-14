package classes
{
	public interface Visitor
	{
		function VisitConcreteElementA(cea:ConcreteElementA):void;
		function VisitConcreteElementB(ceb:ConcreteElementB):void;
	}
}