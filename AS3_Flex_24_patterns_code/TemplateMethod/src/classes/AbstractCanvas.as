package classes
{
	import mx.containers.Canvas;
	
	public class AbstractCanvas extends Canvas
	{
		public function AbstractCanvas()
		{
			/*
				We call the TemplateMethod here in the contstructor but that
				doesn't have to be the case.
			*/
			TemplateMethod();
		}
		
		/*
			This is where the pattern gets its name from, and this is where
			all the action happens. The 3 methods are called here. In this
			class, they don't do anything, so subclasses redefine them.
		*/
		public function TemplateMethod():void
		{
			SetColor();
			SetSize();
			SetContent();
		}
		
		public function SetColor():void
		{
		}
		public function SetSize():void
		{
		}
		public function SetContent():void
		{
		}
	}
}