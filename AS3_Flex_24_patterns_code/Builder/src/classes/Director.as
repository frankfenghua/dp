package classes
{
	import mx.messaging.Producer;
	public class Director
	{
		public var product:Product = new Product;
		public function Director()
		{
		}
		public function Construct(builder:Builder):Product 
		{
			// These are the instructions to the builder for how to build the product.
			builder.BuildPart();
			builder.BuildPart();
			builder.BuildPart();
			
			return builder.GetResult();
		}
	}
}