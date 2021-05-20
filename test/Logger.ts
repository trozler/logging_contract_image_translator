import hre from "hardhat";
import { Artifact } from "hardhat/types";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/dist/src/signer-with-address";

import { Logger } from "../typechain/Logger";
import { Signers } from "../types";
import { expect } from "chai";

const { deployContract } = hre.waffle;

describe("Unit tests", function () {
  before(async function () {
    this.signers = {} as Signers;

    const signers: SignerWithAddress[] = await hre.ethers.getSigners();
    this.signers.admin = signers[0];
  });

  describe("Logger", function () {
    beforeEach(async function () {
      const loggerArtifact: Artifact = await hre.artifacts.readArtifact("Logger");
      this.logger = <Logger>await deployContract(this.signers.admin, loggerArtifact);
    });

    it("should emit event", async function () {
      const start = Date.now();
      const end = Date.now() + 1000;

      await expect(await this.logger.connect(this.signers.admin).logRequest(start, end))
        .to.emit(this.logger, "LogTransaction")
        .withArgs(start, end);
    });
  });
});
