package classes
{
	import mx.containers.Canvas;
	
	public class VisualComponent extends Canvas
	{
		public function VisualComponent()
		{
			
		}
		public function Draw():void
		{
			width = 100;
			height = 100;
			setStyle("backgroundColor", 0xffffff);
		}
	}
}