package classes
{
	/*
		This class is used to represent the terminal symbol of true or false.
	*/
	public class Constant extends BooleanExp
	{
		private var _value:Boolean;
		public function Constant(value:Boolean)
		{
			_value = value;
		}
		override public function Evaluate(context:Context):Boolean
		{
			return _value;
		}
		override public function Copy():BooleanExp
		{
			return new Constant(_value);
		}
		override public function Replace(name:String, exp:BooleanExp):BooleanExp
		{
			return new Constant(_value);
		}
	}
}