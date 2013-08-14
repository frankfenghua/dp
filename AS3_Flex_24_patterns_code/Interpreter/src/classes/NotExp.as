package classes
{
	/*
		This performs the logical NOT operation on its two operands.
	*/
	public class NotExp extends BooleanExp
	{
		private var _operand:BooleanExp;
		public function NotExp(op:BooleanExp)
		{
			_operand = op;
		}
		override public function Evaluate(context:Context):Boolean
		{
			return !_operand.Evaluate(context);
		}
		override public function Copy():BooleanExp
		{
			return new NotExp(_operand.Copy());
		}
		override public function Replace(name:String, exp:BooleanExp):BooleanExp
		{
			return new NotExp(_operand.Replace(name, exp));
		}
	}
}