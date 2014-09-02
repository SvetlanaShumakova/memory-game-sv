package com.noveo.memorygame.model.events {
	import com.noveo.memorygame.model.CardVO;
	import flash.events.Event;

	/**
	 * @author shumakova
	 */
	public class TileSelect extends Event {
		public static const TILE_SELECT : String;
		public var tileVO : CardVO;
		public function TileSelect(vo : CardVO) {
			tileVO = vo; 
			super(TILE_SELECT);
		}
	}
}
