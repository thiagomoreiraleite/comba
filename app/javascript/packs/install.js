const install = () =>{
    let deferredPrompt;
    const addBtn = document.querySelector('#install');
    // addBtn.style.display = 'none';

    window.addEventListener('beforeinstallprompt', (e) => {
        console.log("beforeinstallprompt fired");
        // Prevent Chrome 67 and earlier from automatically showing the prompt
        e.preventDefault();
        // Stash the event so it can be triggered later.
        deferredPrompt = e;
        // Update UI to notify the user they can add to home screen
        addBtn.hidden = false;
        // addBtn.style.display = 'block';
        console.log(`'beforeinstallprompt' event was fired.`);
      
        addBtn.addEventListener('click', () => {
            // hide our user interface that shows our A2HS button
            addBtn.disabled = true;
            // addBtn.style.display = 'none';
            // Show the prompt
            deferredPrompt.prompt();
            // Wait for the user to respond to the prompt
            deferredPrompt.userChoice.then((choiceResult) => {
            if (choiceResult.outcome === 'accepted') {
                console.log("PWA setup accepted");
                addBtn.hidden = true;
            } else {
                console.log("PWA setup rejected");
            }
            addBtn.disabled = false;
            deferredPrompt = null;
            });
        });
    });
    window.addEventListener('appinstalled', async function(e) {
        addBtn.hidden = true;
    });
    // function isThisDeviceRunningiOS(){
    //     if (['iPad Simulator', 'iPhone Simulator','iPod Simulator', 'iPad','iPhone','iPod'].includes(navigator.platform))
    //      return true;
    //     }
    //     // iPad on iOS 13  
    //     else if (navigator.userAgent.includes("Mac") && "ontouchend" in document)){
    //       return true;
    //     }   
    //     else {
    //       return false;
    //     }
    // }
    const isIos = () => {
        const userAgent = window.navigator.userAgent.toLowerCase();
        return /iphone|ipad|ipod/.test( userAgent );
    }
      // Detects if device is in standalone mode
    const isInStandaloneMode = () => ('standalone' in window.navigator) && (window.navigator.standalone);
      
      // Checks if should display install popup notification:
    if (isIos() && !isInStandaloneMode()) {
        document.getElementById("ios-install").hidden = false;
    }
}
export { install };