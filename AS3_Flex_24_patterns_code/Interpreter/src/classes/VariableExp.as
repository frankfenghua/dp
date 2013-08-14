package classes
{
	public class VariableExp extends BooleanExp
	{
		private var _name:String;
		public function VariableExp(name:String)
		{
			_name = name;
		}
		override public function Evaluate(context:Context):Boolean
		{
			/*
				We're passed a context so that we know what the values of the
				variables are, and here we look up those values.
			*/
			return context.Lookup(_name);
		}
		override public function Copy():BooleanExp
		{
			return new VariableExp(_name);
		}
		override public function Replace(name:String, exp:BooleanExp):BooleanExp
		{
			if (name == _name)
			{
				return exp.Copy();
			}
			else
			{
				return new VariableExp(_name);
			}
		}
		/*
			This is required by Context to assign the value to the name.
		*/
		public function GetName():String
		{
			return _name;
		}
	}
}