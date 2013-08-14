package classes
{
	public class ConcreteHandler extends Handler
	{
		public function ConcreteHandler(parent:Object, response:String)
		{
			super(parent, response);
		}
		/*
			If this instance has a response, then return it, but if not,
			forward the request to the parent object.
		*/
		override public function HandleRequest():String
		{
			if (_response.length > 0)
			{
				return _response;
			}
			else if (_parent)
			{
				return _parent.HandleRequest();
			}
			else
			{
				return "Not handled.";
			}
		}
	}
}