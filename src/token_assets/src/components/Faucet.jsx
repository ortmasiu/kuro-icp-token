import React from "react";
import { token } from "../../../declarations/token";

function Faucet() {

  async function handleClick(event) {
    await token.payOut(); 
  }

  return (
    <div className="blue window">
      <h2>
        <span role="img" aria-label="tap emoji">
          🚰
        </span>
        Faucet
      </h2>
      <label>Get your free Kuro tokens here! Claim 10,000 KURO coins to your account.</label>
      <p className="trade-buttons">
        <button id="btn-payout" onClick={handleClick}>
          Claim Tokens
        </button>
      </p>
    </div>
  );
}

export default Faucet;
