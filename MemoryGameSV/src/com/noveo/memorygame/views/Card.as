package com.noveo.memorygame.views {
	import com.noveo.memorygame.logic.GameLogic;
	import flash.events.Event;
	import com.noveo.memorygame.model.events.TileSelect;
	import flash.events.MouseEvent;
	import com.noveo.memorygame.model.CardVO;
	import flash.display.Sprite;

	/**
	 * @author shumakova
	 */
	public class Card extends Sprite {
		
		private var _vo : CardVO;
		
		public function Card() {
			addEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.REMOVED_FROM_STAGE, remove);
		}

		private function remove(event : Event) : void {
			removeEventListener(MouseEvent.CLICK, onClick);
		}

		private function init(event : Event) : void {
			addEventListener(MouseEvent.CLICK, onClick);
		}

		private function onClick(event : MouseEvent) : void {
			GameLogic.instance.dispatchEvent(new TileSelect(_vo));
		}
	}
}
