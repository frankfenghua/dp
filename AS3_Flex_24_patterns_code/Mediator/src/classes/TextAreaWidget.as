package classes
{
	import flash.events.MouseEvent;
	import mx.controls.TextArea;
	/*
		Because we didn't write the button class, we can extend it and also
		implement the Widget interface, which just means that we have to
		provide the two additional methods this pattern requires. This works
		here a bit like multiple inheritance. The other option would have been
		to subclass the Button and then subclass it again.
	*/
	public class TextAreaWidget extends TextArea implements Widget
	{
		public var director:Mediator;
		public function TextAreaWidget(directorParam:Mediator)
		{
			director = directorParam;
		}
		public function Changed(event:MouseEvent):void
		{
			director.WidgetChanged(this);
		}
	}
}