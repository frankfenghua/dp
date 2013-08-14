package classes
{
	/*
		We'll use an interface here instead of the abstract class used in the
		Design Patterns book because it's closer to what we're trying to
		achieve.
	*/
	public interface Iterator
	{
		function Iterator();
		function First():void;
		function Next():void;
		function IsDone():Boolean;
		function CurrentItem():String;
	}
}