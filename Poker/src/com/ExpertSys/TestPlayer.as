package com.ExpertSys 
{
	import com.novabox.playingCards.Height;
	import com.novabox.poker.PokerAction;
	import com.novabox.poker.PokerPlayer;
	import com.novabox.poker.PokerTable;
	
	/**
	 * ...
	 * @author 
	 */
	public class TestPlayer extends PokerPlayer 
	{
		
		public function TestPlayer(_name:String, _stackValue:Number) 
		{
			super(_name, _stackValue);
		}
		
		override public function Play(_pokertable:PokerTable) : Boolean {

			Perceive(_pokertable);
			var actionLabel:String = Analyze();
			Act(actionLabel, _pokerTable);
			
			return (lastAction != PokerAction.NONE);
		}
		
		
		public function Act(actionLabel:String, pokerTable:PokerTable) : void {
			if (actionLabel == Facts.CALL) {
				Call(pokerTable.GetValueToCall())
			} 
			else if (actionLabel == Facts.BAD && actionLabel == Facts.BE_CHECKED) {
				/*CHECK*/
			}
			else if (actionLabel == Facts.GOOD && actionLabel == Facts.BE_CHECKED) {
				/*PETITE RELANCE*/
			}
			else if (actionLabel == Facts.GOOD) {
				/*SUIVRE*/
			}
			/* else if (...) {
			} */
		}
		
		public function Analyze() : String {
			
			var conclusionLabels:Array;
			
			//conclusionLabels = expertSystem.InferForward() 
			
			var actions:Array;
			//actions = /*conclusionLabels sans les faits intermédiaires*/
			
			
			if (actions.length > 1) {
				//Problème de logique parallèle
				
				/* Choisir une action */ 
				
			} else if (actions.length > 0) {
				//Une seule action
				return actions[0]
			} else {
				//Pas d'action trouvée
				return null;
			}
			
		}
		
		public function Perceive(_pokertable:PokerTable) : void {
						
			expertSystm.ResetFactValues();
			
			if (_pokertable.GetValueToCall() > 0) {
				//Relancé 
				expertSystem.SetFactValue("Relancé", true);
			} else {
				expertSystem.SetFactValue("Pas relancé", true);
			}
						
			if (GetCard(0).GetHeight() == GetCard(1).GetHeight()) {
				//Pocket Pair
				
				if (GetCard(0).GetHeight() >= Height.TEN) {
					//Au moins une paire de 10
					
				}
			}
			
			
		}
		
		override public function ProcessPlayerAction(_player:PokerPlayer) : void
		{
			trace("IL a joué");
		}

		
	}

}