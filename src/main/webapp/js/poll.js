function disableResubmit() {                 
    if (document.cookie.indexOf("voted") > -1) { 
        alert(" Már szavaztál! "); return false; 
    } 
    else { 
        document.cookie = "voted"; return true; 
    }
}
