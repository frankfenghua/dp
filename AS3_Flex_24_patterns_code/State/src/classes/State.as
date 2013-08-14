package classes
{
	public interface State
	{
		/*
			State objects just have to implement the Handle() method. In this
			example it will just return a string to say what state the 
			application is in.
		*/
		function Handle():String;
	}
}