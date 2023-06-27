function cardspace(){
    var carddigit=document.getElementById('cardnum').value;
    if(carddigit.lenght == 4 || carddigit.length == 9 || carddigit.lenght == 14){
        document.getElementById('cardnum').value = carddigit+" ";
        document.getElementById('cardnum').max = 1;
    }
}

function addSlashes(){
    var expiredate = document.getElementById('validade').value;
    if(expiredate.lenght == ){
        document.getElementById('validade').value = expiredate+"/";
        document.getElementById('validade').max = 1;
    }
}

function remove(){
    document.getElementById('container').style.display = "none";
  }