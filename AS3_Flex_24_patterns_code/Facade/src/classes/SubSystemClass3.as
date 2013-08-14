package classes
{
	import mx.containers.Canvas;
	
	public class SubSystemClass3
	{
		// This class makes a canvas 100 x 100.
		public function SubSystemClass3()
		{
		}
		public static function MakeCanvas100px(canvas:Canvas):Canvas
		{
			canvas.width = 100;
			canvas.height = 100;
			return canvas;
		}
	}
}