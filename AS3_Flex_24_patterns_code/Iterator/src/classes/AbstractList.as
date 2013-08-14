package classes
{
	/*
		We'll use an interface here instead of the abstract class used in the
		Design Patterns book because it's closer to what we're trying to
		achieve.
	*/
	public interface AbstractList
	{
		function AbstractList();
		function CreateIterator():Iterator;
		function Count():int;
		function Append(item:Object):void;
		function Remove(item:Object):void;
	}
}