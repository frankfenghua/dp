package classes
{
	public class Proxy implements ISubject
	{
		public function Proxy()
		{
		}
		/*
			Make sure the password is okay and if it is, forward the
			request and return the result.
		*/
		public function Request(name:String, password:String):String
		{
			if (password == "letmein")
			{
				var realSubject:RealSubject = new RealSubject();
				return realSubject.Request(name, password);
			}
			else
			{
				return "Access denied.";
			}
		}
	}
}