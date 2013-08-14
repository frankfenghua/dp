package classes
{
	import mx.utils.ObjectUtil;
	public class Prototype
	{
		public var productType:String;
		public var thisProduct:Prototype;
		public function Prototype()
		{
			productType = "Prototype";
			thisProduct = this;
		}
		public function Clone():Prototype
		{
			return new Prototype();
		}
		public function GetProductType():String
		{
			return productType;
		}
	}
}