package com.noveo.memorygame.logic {
	import com.noveo.memorygame.model.events.TileSelect;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	/**
	 * @author shumakova
	 */
	public class GameLogic extends EventDispatcher {
		
		private static var _instance : GameLogic;
		public static const START : String = "START";
		 
		public function GameLogic() {
	
		}
		
		static public function get instance() : GameLogic {
			if(!_instance)
			{
				_instance = new GameLogic();
			}
			return _instance;
		}

		public function init() : void {
			createCards();
			addEventListener(TileSelect.TILE_SELECT, onSelectCard);
			dispatchEvent(new Event(START));
		}

		private function createCards() : void {
			
		}

		private function onSelectCard($event : TileSelect) : void {
			
		}
		
	}
}
