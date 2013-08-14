package classes
{
	import classes.*
	public class ConcreteBuilder1 extends Builder
	{
		
		// Call the super's constructor to create the product.
		public function ConcreteBuilder1() 
		{
			super();
		}
		
		// Perform an operation on the product.
		override public function BuildPart():void 
		{
			product.productParts++;
		}
		
		// Return the product when asked.
		override public function GetResult():Product 
		{
			product.productType = "Product 1";
			return product;
		}
	}
}