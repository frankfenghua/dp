package classes
{
	public class Context
	{
		private var _context:Object;
		public function Context()
		{
			/*
				We store the mappings of variable names to values as an Object
				which is the equivalent of a Java Map, a ColdFusion Struct etc.
			*/
			_context = new Object();
		}
		
		/*
			A bit like a getter.
		*/
		public function Lookup(name:String):Boolean
		{
			return _context[name];
		}
		
		/*
			A bit like a setter.
		*/
		public function Assign(exp:VariableExp, value:Boolean):void
		{
			_context[exp.GetName()] = value;
		}
	}
}