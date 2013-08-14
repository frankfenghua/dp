package classes
{
	import classes.*
	public class ConcreteBuilder2 extends Builder
	{
		public function ConcreteBuilder2()
		{
			super();
		}
		override public function BuildPart():void 
		{
			product.productParts++;
		}
		override public function GetResult():Product 
		{
			product.productType = "Product 2";
			return product;
		}
	}
}