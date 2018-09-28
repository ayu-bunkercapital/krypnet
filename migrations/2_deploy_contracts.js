const KrypNetwork = artifacts.require("KrypNetwork");

module.exports = function(deployer) {
    deployer.deploy(KrypNetwork).then(() => {
        console.log("KrypNetwork contract address is: ", KrypNetwork.address)
    });
}