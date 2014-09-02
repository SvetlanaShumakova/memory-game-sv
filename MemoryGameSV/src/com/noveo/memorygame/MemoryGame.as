package com.noveo.memorygame {
	import com.noveo.memorygame.views.View;
	import com.noveo.memorygame.logic.GameLogic;
	import com.noveo.memorygame.model.AppModel;
	import flash.display.Sprite;

	public class MemoryGame extends Sprite {
		public function MemoryGame() {
			
			AppModel.instance.init(5, 3);

			var view : View = new View();
			addChild(view);
			
			GameLogic.instance.init();
		}
	}
}
