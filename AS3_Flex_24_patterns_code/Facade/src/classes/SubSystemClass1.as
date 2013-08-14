package classes
{
	import mx.containers.Canvas;
	
	public class SubSystemClass1
	{
		// This class just creates a Canvas.
		public function SubSystemClass1()
		{
		}
		public static function CreateCanvas():Canvas
		{
			return new Canvas();
		}
	}
}