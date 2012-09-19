package by.gramovich.bsu.fivecourse.flex.lab1.model
{
	import mx.collections.ArrayCollection;
	
	import spark.collections.Sort;

	/**
	 * Model used to store random numbers
	*/
	[Bindable]
	public class RandomList
	{
		public var items:ArrayCollection = new ArrayCollection();
		private static var instance:RandomList;
		public function RandomList()
		{
			instance=this;
		}
		
		public static function getInstance():RandomList {
			if (instance == null) {
				instance = new RandomList();
			}
			return instance;
		}
		
		/**
		 * Add item at the end
		 */
		public function addItem(item:int):void {
			items.addItem(item);
		}
		
		/**
		 * Delete item by index
		 */
		public function deleteItem(index:int):void {
			items.removeItemAt(index);
		}
		
		/**
		 * Delete all items
		 */
		public function clear():void {
			items.removeAll();
			items.sort = null;
			items.refresh();
		}
		
		/**
		 * Sort items in ascending order
		 */
		public function sort():void {
			var numericDataSort:Sort = new Sort();
			items.sort = numericDataSort;
			items.refresh();
		}
		
		/**
		 * 
		 */
		public function isEmpty():Boolean {
			return items.length == 0;
		}
	}
}