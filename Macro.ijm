//This is the macro to quantify Total Brain Area in Fiji.
run("8-bit");
run("Out [-]");
waitForUser("Pause1", "Draw the crop area");
run("Crop");
run("Threshold...");
run("Out [-]");
waitForUser("Pause1", "Choose the right threshold");
//setThreshold En este caso es para reconocer las rodajas de cerebro, hay que escoger bien.
run("Convert to Mask");
run("Analyze Particles...", "size=5316635.16-Infinity circularity=0.00-50.00 show=[Overlay Masks] display include summarize");
selectWindow("Threshold");
run("Close")
