package classes
{
	public class Adaptee
	{
		public function Adaptee()
		{
		}
		/*
			This is the SpecificRequest() method that is inside the toolkit
			or resource that we're trying to integrate in to our application.
			The problem is, it doesn't conform to the Target interface, so we
			have used an adapter to map the method names to each other in this
			case. In practise it's likely we'd need to do more than just map
			the method names, we'd probably need to make sure that the methods
			returned the same object types etc.
		*/
		public function SpecificRequest():String
		{
			return "Adaptee.SpecificRequest() called!";
		}
	}
}