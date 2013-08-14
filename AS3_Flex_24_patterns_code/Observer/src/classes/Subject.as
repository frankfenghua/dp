package classes
{
	import mx.collections.ArrayCollection;
	
	public interface Subject
	{
		function Attach(o:Observer):void;
		function Detach(o:Observer):void;
		function Notify():void;
		function GetState():ArrayCollection;
		function SetState(a:ArrayCollection):void;
	}
}