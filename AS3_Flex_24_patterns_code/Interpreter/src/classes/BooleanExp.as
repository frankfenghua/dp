package classes
{
	public class BooleanExp
	{
		/*
			All of these methods are designed to be overridden, so it might
			have been good to write this as an interface. However, in keeping
			with the book, it is a superclass.
		*/
		public function BooleanExp()
		{
			throw new Error("This shouldn't be instantiated.");
		}
		public function Evaluate(context:Context):Boolean
		{
			return true;
		}
		public function Copy():BooleanExp
		{
			return new BooleanExp();
		}
		public function Replace(name:String, exp:BooleanExp):BooleanExp
		{
			return new BooleanExp();
		}
	}
}