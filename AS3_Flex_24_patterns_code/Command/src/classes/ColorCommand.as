package classes
{
	import mx.containers.Canvas;
	public class ColorCommand extends Command
	{
		public var receiver:Canvas;
		public var thisColor:int;
		public var previousColor:int;
		public function ColorCommand(receiverParam:Canvas, action:int)
		{
			/*
				Store the receiver object and the action which in this case
				is the color we'd like to make it.
			*/
			receiver = receiverParam;
			thisColor = action;
		}
		override public function Execute():void
		{
			/*
				Store the previous color so that we can reverse the
				command, and then execute the command.
			*/
			previousColor = receiver.getStyle("backgroundColor");
			receiver.setStyle("backgroundColor", thisColor);
		}
		override public function UnExecute():void
		{
			/*
				Retrieve the color that we stored and set it back
				to what it was originally.
			*/
			receiver.setStyle("backgroundColor", previousColor);
		}
	}
}