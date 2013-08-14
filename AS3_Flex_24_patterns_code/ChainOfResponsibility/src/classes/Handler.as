package classes
{
	public class Handler
	{
		/*
			This is just tended to be an abstract class so it's never
			instantiated. It allows subclasses to store their parent
			and their response to a request.
		*/
		public var _parent:Object;
		public var _response:String;
		public function Handler(parent:Object, response:String)
		{
			_parent = parent;
			_response = response;
		}
		public function HandleRequest():String
		{
			return "You shouldn't have instantiated this class!";
		}
	}
}