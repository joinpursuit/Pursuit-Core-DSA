import UIKit

var deckID: String?
var drawEndPoint: String?
var player = 0
var dealer = 0
var card: String?
var playing = false

player = 5
player *= 2
func dealPlayer () {
    
}
/*
 /*
 //PLACING BET
 @IBAction func bet(_ sender: UIButton) {
 
    let num = sender.currentTitle
 
    playerBet Int(num!)! //Player clicks on "chips" to increment their total bet by the chip value
 
    playerMoney -= Int(num!)! //Each bet takes away from playerMoney
 
    playerBetLabel.text? = String(playerBet) //This updates the label to show the Player how much $$ they've put at stake thus far
 }
 
 
 @IBAction func deal(_ sender: UIButton) {
  \
    checkIfPlaying()
 
 }
 */
 


Player clicks a button to place their bet -> Label updates to show Players bet placed
Bet is subtracted from Player's $$ NOTE: If playerMoney = 0, game over! Labels updated
 
DEAL -> Cards get drawn for Player AND Dealer
     -> One Dealer card is shown and one is hidden
     -> The scores of both Dealer and Player are updated; they become the sum of the card values
 
HIT  -> Player draws, updates Player score
     -> I Player score over 21 then game is over, hidden card is revealed, dealer score is updated, label updated to show you lost, playing is set to false.
 
STAND -> Only Dealer draws as much as they want to, Dealer total gets updated ; If              
         Dealer score over 21 then game is over, label updated to show you won,playing set to false.

DOUBLE -> playerBet is doubled IF they have sufficient funds
       -> Reveals the hidden card IF BlackJack and updates Dealer score and GG
       -> Player draws, updates Player score
       -> STAND
 
SPLIT -> Hand splits into two hands
      -> 1st hand gets dealt automatically
      -> Actions then occur to both hands
 
 
var playing = Bool()

@IBAction Deal {
    play()
 }
 
func play() {
    playing = true
    while playing {
        dealPlayer()
        dealDealer() //
        playerTotal()
        dealerTotal()
        if playerTotal || dealerTotal == 21 {
            playing = false
        }
 
 
    }
}
*/
