package classes
{
	import mx.messaging.Producer;
	public class Builder
	{
		public var product:Product;
		
		// Create the product.
		public function Builder()
		{
			product = new Product();
			product.productParts = 0;
			product.productType = "Product";
		}
		
		// Perform operations on the product according to the director's instructions.
		public function BuildPart():void 
		{
			// Each concrete class overrides the code in here to do its own thing.
		}
		
		// Hand over the product when asked.
		public function GetResult():Product 
		{
			return new Product;
		}
		
	}
}