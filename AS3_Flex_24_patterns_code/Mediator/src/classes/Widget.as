package classes
{
	import flash.events.MouseEvent;
	/*
		We've decided to implement this as an interface, and this just makes
		sure that any classes that implement it will have the required
		methods.
	*/
	public interface Widget
	{
		function Widget(director:Mediator);
		function Changed(event:MouseEvent):void;
	}
}