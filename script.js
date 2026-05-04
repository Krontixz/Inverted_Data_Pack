let steps = 0;
let headsValue = 3; // Starting heads

function chop() {
    steps++;
    
    // The Rule: Remove one head, but grow back 'steps' amount of complexity
    if (headsValue > 0) {
        headsValue--; // You cut one
        
        // This is a simplified version of the math growth
        // In a real Hydra game, the "heads" would become "trees"
        headsValue += (steps * 2); 
        
        updateDisplay();
    } else {
        alert("You won! But in a real record-sized game, you'd be clicking for trillions of years.");
    }
}

function updateDisplay() {
    document.getElementById('step-count').innerText = steps;
    document.getElementById('complexity').innerText = headsValue;
    
    // Visual representation (limited so the screen doesn't break)
    let icons = "";
    let displayCount = Math.min(headsValue, 50); // Don't crash the browser!
    for(let i=0; i < displayCount; i++) {
        icons += "🐉";
    }
    document.getElementById('heads').innerText = icons + (headsValue > 50 ? "..." : "");
}
