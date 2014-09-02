package com.noveo.memorygame.views {
	import com.noveo.memorygame.model.AppModel;
	import com.noveo.memorygame.logic.GameLogic;

	import flash.events.Event;
	import flash.display.Sprite;

	/**
	 * @author shumakova
	 */
	public class Deck extends Sprite {
		private var _cards : Vector.<Card>;
		
		public function Deck() {
			addEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.REMOVED_FROM_STAGE, remove);
		}

		private function remove(event : Event) : void {
			GameLogic.instance.removeEventListener(GameLogic.START, onStart);
		}

		private function init(event : Event) : void {
			GameLogic.instance.addEventListener(GameLogic.START, onStart);
		}

		private function onStart(event : Event) : void {
			for (var i : int = 0; i < AppModel.instance.rows; i++) {
				for (var j : int = 0; j < AppModel.instance.columns; j++) {
					
				}
			}
		}

		public function get cards() : Vector.<Card> {
			return _cards;
		}
	}
}
