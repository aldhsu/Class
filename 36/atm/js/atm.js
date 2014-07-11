var bank =  {
  "checking": 0,
  "savings": 0
}
var render = function () {
  var checking = document.getElementById("balance1");
  var savings = document.getElementById("balance2");
  checking.innerHTML = "$" + bank.checking;
  savings.innerHTML = "$" + bank.savings;
  console.log("rendering");
}
var bankingOperation = function(account, amount) {
  var total = bank.checking + bank.savings;
  if ((total + amount) < 0) return false;

  bank[account] += amount;
  if (bank[account] < 0) {
    for (var accType in bank) {
      if (accType != account) {
        // shitty implementation is not extensible you should break it into separate method
        bank[accType] += bank[account];
        bank[account] = 0;
      }
    }
  }
  return true;
}

var clickHandler = function (event) {
  var account, action, amount, operation;
  if ((event.target.id).indexOf("checking") != -1) account = "checking";
  if ((event.target.id).indexOf("savings") != -1) account = "savings";
  if ((event.target.id).indexOf("Withdraw") != -1) operation = -1;
  if ((event.target.id).indexOf("Deposit") != -1) operation = 1;
  if (account && operation) {
    var amountNode = document.getElementById(account+"Amount");
    amount = parseInt(amountNode.value);
    if (!isNaN(amount)) bankingOperation(account, amount * operation, bank);
  }
  render();
}

var body = document.getElementsByTagName('body')[0];
body.addEventListener('click', clickHandler);