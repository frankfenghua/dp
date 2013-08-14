package classes
{
	import mx.containers.Canvas;
	
	public class SubSystemClass2
	{
		// This class makes a canvas orange.
		public function SubSystemClass2()
		{
		}
		public static function MakeCanvasOrange(canvas:Canvas):Canvas
		{
			canvas.setStyle("backgroundColor", 0xff9900);
			return canvas;
		}
		public static function MakeCanvasGreen(canvas:Canvas):Canvas
		{
			canvas.setStyle("backgroundColor", 0x00ff99);
			return canvas;
		}
		public static function MakeCanvasPurple(canvas:Canvas):Canvas
		{
			canvas.setStyle("backgroundColor", 0x9900ff);
			return canvas;
		}
	}
}