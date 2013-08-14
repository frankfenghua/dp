package classes
{
	public class Context
	{
		public var state:State;
		public function Context()
		{
			// Start off in state A.
			state = new ConcreteStateA();
		}
		public function ChangeState(s:State):void
		{
			// Change to the state that has been passed in.
			state = s;
		}
		public function Request():String
		{
			// Just forward the request to the state object.
			return state.Handle();
		}
	}
}