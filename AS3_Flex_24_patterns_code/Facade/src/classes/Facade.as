package classes
{
	import mx.containers.Canvas;
	
	/*
		We'll implement the Facade as a Singleton because usually we only
		need one of them.
		
		Our Facade will simplify the interface to a subsystem that creates
		Canvas objects. We'll assume that the usual scenario is an orange
		Canvas of 100 x 100 pixels.
	*/
	public class Facade
	{
		// The _instance variable is set by calling the constructor.
		private static var _instance:Facade = new Facade();
		public function Facade()
		{
			/* 
				This will only run the first time i.e. by the call above.
				Otherwise the if statement below with throw an error.
			*/
			if (_instance != null)
			{
				throw new Error("You can't instantiate this because it's a singleton. Use GetInstance() instead!");
			}
		}
		public static function GetInstance():Facade
		{
			return _instance;
		}
		public function GetOrangeCanvas():Canvas
		{
			var canvas:Canvas = SubSystemClass1.CreateCanvas();
			canvas = SubSystemClass2.MakeCanvasOrange(canvas);
			canvas = SubSystemClass3.MakeCanvas100px(canvas);
			return canvas;
		}
		public function GetGreenCanvas():Canvas
		{
			var canvas:Canvas = SubSystemClass1.CreateCanvas();
			canvas = SubSystemClass2.MakeCanvasGreen(canvas);
			canvas = SubSystemClass3.MakeCanvas100px(canvas);
			return canvas;
		}
		public function GetPurpleCanvas():Canvas
		{
			var canvas:Canvas = SubSystemClass1.CreateCanvas();
			canvas = SubSystemClass2.MakeCanvasPurple(canvas);
			canvas = SubSystemClass3.MakeCanvas100px(canvas);
			return canvas;
		}
	}
}