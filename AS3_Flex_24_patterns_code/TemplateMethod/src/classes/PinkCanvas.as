package classes
{
	import mx.controls.Text;
	
	public class PinkCanvas extends AbstractCanvas
	{
		public function PinkCanvas()
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
			setStyle("backgroundColor", 0xffccdd);
		}
		override public function SetSize():void
		{
			width = 200;
			height = 300;
		}
		override public function SetContent():void
		{
			var text:Text = new Text();
			text.text = "Pink Canvas";
			text.setStyle("fontSize", 24);
			addChild(text);
		}
	}
}