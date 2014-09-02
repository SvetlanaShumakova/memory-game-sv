package com.noveo.memorygame.model {
	/**
	 * @author shumakova
	 */
	public class CardVO {
		public var value : int;
		public var state : uint;
		
		public static function compare(vo1 : CardVO, vo2 : CardVO) : Boolean {
			return vo1.value == vo2.value;
		}
	}
}
