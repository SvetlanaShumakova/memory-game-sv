package com.noveo.memorygame.views {
	import flash.display.Sprite;

	/**
	 * @author shumakova
	 */
	public class View extends Sprite {
		private var _gameView : Deck;
		public function View() {
			_gameView = new Deck();
			addChild(_gameView);
		}
	}
}
