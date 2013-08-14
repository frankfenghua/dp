package classes
{
	import mx.controls.Text;
	
	public class BlueCanvas extends AbstractCanvas
	{
		public function BlueCanvas()
		{
			super();
		}
		
		/*
			Here are the 3 methods that are called by the TemplateMethod
			and they can be redifined here in whatever way is appropriate
			for this specific class.
		*/
		override public function SetColor():void
		{
			setStyle("backgroundColor", 0xccffff);
		}
		override public function SetSize():void
		{
			width = 300;
			height = 200;
		}
		override public function SetContent():void
		{
			var text:Text = new Text();
			text.text = "Blue Canvas";
			text.setStyle("fontSize", 36);
			addChild(text);
		}
	}
}