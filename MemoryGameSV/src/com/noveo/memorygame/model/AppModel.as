package com.noveo.memorygame.model {
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	/**
	 * @author shumakova
	 */
	public class AppModel extends EventDispatcher {
		private static var _instance : AppModel;
		
		private var _columns : int;
		private var _rows : int;

		public function AppModel() {
			super();
		}

		static public function get instance() : AppModel {
			if(!_instance)
			{
				_instance = new AppModel();
			}
			return _instance;
		}

		public function init($columns : int, $rows : int) : void {
			_rows = $rows;
			_columns = $columns;
		}

		public function get columns() : int {
			return _columns;
		}

		public function get rows() : int {
			return _rows;
		}
		
		
	}
}
