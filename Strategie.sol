pragma solidity >=0.4.22 <0.6.0;
import "./ActionStrategy.sol";
import "./AvatarInterface.sol";
contract Strategy is ActionStrategy {
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action) {
        if(previousAdvAction==Action.NONE){
            if(AvatarInterface(avatar).getPuissancePhysique()>=AvatarInterface(avatar).getPuissanceMagique()){
                action=Action.PHYSICAL_ATTACK;
            }else{
                action=Action.MAGICAL_ATTACK;
            }
        }else if(AvatarInterface(avatar).getPuissancePhysique()>=AvatarInterface(avatarAdv).getVie()){
            action=Action.PHYSICAL_ATTACK;
        }else if(AvatarInterface(avatar).getPuissanceMagique()>=AvatarInterface(avatarAdv).getVie()){
            action=Action.MAGICAL_ATTACK;
        }else if(previousAdvAction==Action.PHYSICAL_ATTACK){
            action=Action.PHYSICAL_PARRY;
        }else if(previousAdvAction==Action.MAGICAL_ATTACK){
            action=Action.MAGICAL_PARRY;
        }else{
            if(AvatarInterface(avatar).getPuissancePhysique()>=AvatarIntserface(avatar).getPuissanceMagique()){
                action=Action.PHYSICAL_ATTACK;
            }else{
                action=Action.MAGICAL_ATTACK;
            }
        }
    }
}