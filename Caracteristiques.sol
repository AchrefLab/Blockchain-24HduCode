pragma solidity >=0.4.22 <0.6.0;
import "./AvatarInterface.sol";

contract defi is AvatarInterface{

    int endurance;
    int force;
    int intelligence;
    int vitesse;
    int nonce = 0;

 

    function setNewCaracteristiques(address avatar) external {

        (endurance, force, intelligence, vitesse)= AvatarInterface (avatar).getCaracteristiques();

        if(endurance < 25){
            endurance = random();
        }else if(force <25){
            force =random();
        }else if(intelligence <25){
            intelligence = random();
        }else if (vitesse <25){
            vitesse = random();
        }
    }



    function random() internal returns (int) {
        int randomnumber = int(keccak256(abi.encodePacked(now, msg.sender, nonce))) % 100;
        randomnumber = randomnumber + 25;
        nonce++;
        return randomnumber;
}

}
