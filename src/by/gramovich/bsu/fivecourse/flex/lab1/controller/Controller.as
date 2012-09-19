package by.gramovich.bsu.fivecourse.flex.lab1.controller
{
	import by.gramovich.bsu.fivecourse.flex.lab1.model.RandomList;

	public class Controller
	{
		private const MAX_RANDOM_NUMBER:Number = 1000;
		
		private var randomList:RandomList = RandomList.getInstance();
		
		public function Controller(){}
		
		/** 
		 * Add random number to model
		 */
		public function addRandomNumber():void {
			randomList.addItem(Math.round(Math.random() * MAX_RANDOM_NUMBER));
		}
		
		/**
		 * Delete item from model by index
		 */
		public function deleteItem(index:int):void {
			randomList.deleteItem(index);
		}
		
		/**
		 * Sort items in model
		 */
		public function sort():void {
			randomList.sort();
		}
		
		/**
		 * Clear items in model
		 */
		public function clear():void {
			randomList.clear();
		}
	}
}