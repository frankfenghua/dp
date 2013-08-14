package classes
{
	/*
		This performs the logical OR operation on its two operands.
	*/
	public class OrExp extends BooleanExp
	{
		private var _operand1:BooleanExp;
		private var _operand2:BooleanExp;
		public function OrExp(op1:BooleanExp, op2:BooleanExp)
		{
			_operand1 = op1;
			_operand2 = op2;
		}
		override public function Evaluate(context:Context):Boolean
		{
			return _operand1.Evaluate(context) || _operand2.Evaluate(context);
		}
		override public function Copy():BooleanExp
		{
			return new OrExp(_operand1.Copy(), _operand2.Copy());
		}
		override public function Replace(name:String, exp:BooleanExp):BooleanExp
		{
			return new OrExp(_operand1.Replace(name, exp), _operand2.Replace(name, exp));
		}
	}
}