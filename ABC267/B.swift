let read = readLine()!

let pin = Array(read);

var keka = "aa"
if(read == "1111111111"){
  keka = "No"
}
if(pin[6]=="1"){
	if(pin[3]=="1"){
      keka = "No"
    } else if(pin[1]=="1" || pin[7]=="1"){
     
      keka = "Yes"
    } else if(pin[0]=="1" || pin[4]=="1"){ 
      
      keka = "Yes"
    } else if(pin[2]=="1" || pin[8]=="1"){
      keka = "Yes"
    } else if(pin[5]=="1"){
      keka = "Yes"
    } else if(pin[9]=="1"){
      keka = "Yes"
    }
} 
if(pin[3]=="1"){
  if(pin[1]=="1" || pin[7]=="1"){
    if(keka != "Yes"){
      keka = "No"
    }
  } else if(pin[0]=="1" || pin[4]=="1"){
      keka = "Yes"
  } else if(pin[2]=="1" || pin[8]=="1"){
      keka = "Yes"
  }else if(pin[5]=="1"){
      keka = "Yes"
  } else if(pin[9]=="1"){
      keka = "Yes"
  }
} 
if(pin[1]=="1" || pin[7]=="1"){
  if(pin[0]=="1" || pin[4]=="1"){
     if(keka != "Yes"){
      keka = "No"
    }
  }else if(pin[2]=="1" || pin[8]=="1"){
      keka = "Yes"
    }else if(pin[5]=="1"){
      keka = "Yes"
    } else if(pin[9]=="1"){
      keka = "Yes"
    }
}

if(pin[0]=="1" || pin[4]=="1"){
  if(pin[2]=="1" || pin[8]=="1"){
    if(keka != "Yes"){
      keka = "No"
    }
  }else if(pin[5]=="1"){
      keka = "Yes"
    } else if(pin[9]=="1"){
      keka = "Yes"
    }
}

if(pin[2]=="1" || pin[8]=="1"){
  if(pin[5]=="1"){
     if(keka != "Yes"){
      keka = "No"
     }
    } else if(pin[9]=="1"){
      keka = "Yes"
    }
}

if(keka != "Yes"){
  keka = "No"
}

if(pin[0] == "1"){
  keka = "No"
}

print(keka)