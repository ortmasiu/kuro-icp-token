import Debug "mo:base/Debug"; 
import HashMap "mo:base/HashMap"; 
import Principal "mo:base/Principal";

actor Token {
    
    var owner : Principal = Principal.fromText("5eae5-wik35-pit75-eucms-bhso5-wlnhu-ph3ce-c2kr7-2llje-qm7z6-6qe");
    var totalSupply: Nat = 70000000000; // 70 Million
    var symbol : Text = "KURO"; 

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
    balances.put(owner, totalSupply);

    public query func balanceOf(who: Principal) : async Nat {
        
        let balance : Nat = switch (balances.get(who)) {
            case null 0;
            case (?result) result; 
        };

        return balance;
    };

    public query func getSymbol() : async Text {
        return symbol; 
    };

    public shared(msg) func payOut() : async Text {
        Debug.print(debug_show(msg.caller));
        return "Success";
    };

}  