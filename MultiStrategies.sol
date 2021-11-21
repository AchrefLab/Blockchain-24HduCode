pragma solidity >=0.4.22 <0.6.0;
import "./ActionStrategy.sol";
import "./AvatarInterface.sol";
contract Strategy2 is ActionStrategy {
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action) {
        int attPhy = AvatarInterface (avatar).getPuissancePhysique() - AvatarInterface (avatarAdv).getDefensePhysique();
        int attMag = AvatarInterface (avatar).getPuissanceMagique() - AvatarInterface (avatarAdv).getDefenseMagique();
        if(attPhy>0 && attMag>0){
            if(attPhy>=attMag){
                action=Action.PHYSICAL_ATTACK;
            }else{
                action=Action.MAGICAL_ATTACK;
            }

        }else{
            action=Action.DODGE;
        }
    }
}
pragma solidity >=0.4.22 <0.6.0;
import "./ActionStrategy.sol";
import "./AvatarInterface.sol";
contract Strategy3 is ActionStrategy {
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action) {
        int attPhy = AvatarInterface (avatar).getPuissancePhysique() - AvatarInterface (avatarAdv).getDefensePhysique();
        int attMag = AvatarInterface (avatar).getPuissanceMagique() - AvatarInterface (avatarAdv).getDefenseMagique();
        if(attPhy>0 && attMag>0){
            if(attPhy>=attMag){
                action=Action.PHYSICAL_ATTACK;
            }else{
                action=Action.MAGICAL_ATTACK;
            }

        }else{
            action=Action.DODGE;
        }
    }
}
