
pragma solidity >=0.4.22 <0.6.0;
import "./AvatarInterface.sol";

contract LocalAvatar is AvatarInterface{
    int vie;
    int endurance;
    int z;
    int u;
    int s;

    function setSoins(address avatar) external {
        (endurance,z,u,s)= AvatarInterface (avatar).getCaracteristiques();

        if(AvatarInterface (avatar).getVie() < endurance){
            vie = endurance;
        }
    }

}