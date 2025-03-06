function copyToClipboard() {
    var copyText = document.getElementById("installer-script");

    
    copyText.select();
    copyText.setSelectionRange(0, 99999);

    
    navigator.clipboard.writeText(copyText.value);
}
