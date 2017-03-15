	logo = new Image();
//	logo.src = "Templates/Logo.jpg";
	logo.style.opacity = "0.6";
	var textAgg = 0;
	
	$(document).ready(function () {
		$("#riga1").hide();
		$("#testoRig1").hide();
		$('#riga2').hide();
		$("#testoRig2").hide();
		$('#riga3').hide();
		$("#testoRig3").hide();
		$('#riga4').hide();
		$("#testoRig4").hide();
		$('#riga5').hide();
		$("#testoRig5").hide();
		$('#riga6').hide();
		$("#testoRig6").hide();
		$('#riga7').hide();
		$("#testoRig7").hide();



		$("#Aggiung").click(function Aggiungi() {

			textAgg++;
			switch (textAgg) {
				case 1:
					$("#boxRig1").show();
					$("#testoRig1").show();
					break;
				case 2:
					$('#boxRig2').show();
					$("#testoRig2").show();
					break;
				case 3:
					$('#boxRig3').show();
					$("#testoRig3").show();
					break;
				case 4:
					$('#boxRig4').show();
					$("#testoRig4").show();
					break;
				case 5:
					$('#boxRig5').show();
					$("#testoRig5").show();
					break;
				case 6:
					$('#boxRig6').show();
					$("#testoRig6").show();
					break;
				case 7:
					$('#boxRig7').show();
					$("#testoRig7").show();
					$("#aggButton").hide();
					break;
			}
		})
	});
		
        (function (document, FileReader, Image) {
            "use strict";
            var textAgg = 0;
            var e = {}, // A container for DOM elements
                reader = new FileReader(),
                image = new Image(),
				
				
                ctxt = null, // For canvas' 2d context
                writeMeme = null, // For writing text on canvas
                renderMeme = null, // For rendering meme on canvas
                get = function (id) {
                    // Short for document.getElementById()
                    return document.getElementById(id);
                };
            // Get elements (by id):
            e.box1 = get("Step1");
            e.ifile = get("ifile");
            e.box2 = get("Step2");
			
            e.topline = get("topLine"); //Top
			e.dimtopline = get("dimTopLine");
			e.coltopline = get("colTopLine");
			e.contopline = get("conTopLine");
			
            e.testo1 = get("testoRig1"); //Riga 1
			e.dimrig1 = get("dimRig1");
			e.colrig1 = get("colRig1");
			e.conrig1 = get("conRig1");
			
            e.testo2 = get("testoRig2"); //Riga 2
			e.dimrig2 = get("dimRig2");
			e.colrig2 = get("colRig2");
			e.conrig2 = get("conRig2");
			
            e.testo3 = get("testoRig3"); //Riga 3
			e.dimrig3 = get("dimRig3");
			e.colrig3 = get("colRig3");
			e.conrig3 = get("conRig3");
			
            e.testo4 = get("testoRig4"); //Riga 4
			e.dimrig4 = get("dimRig4");
			e.colrig4 = get("colRig4");
			e.conrig4 = get("conRig4");
			
            e.testo5 = get("testoRig5"); //Riga 5
			e.dimrig5 = get("dimRig5");
			e.colrig5 = get("colRig5");
			e.conrig5 = get("conRig5");
			
            e.testo6 = get("testoRig6"); //Riga 6
			e.dimrig6 = get("dimRig6");
			e.colrig6 = get("colRig6");
			e.conrig6 = get("conRig6");
			
            e.testo7 = get("testoRig7"); //Riga 7
			e.dimrig7 = get("dimRig7");
			e.colrig7 = get("colRig7");
			e.conrig7 = get("conRig7");
			
			e.bottomline = get("bottomLine"); //Bottom
			e.dimbottomline = get("dimBottomLine");
			e.colbottomline = get("colBottomLine");
			e.conbottomline = get("conBottomLine");
			
            e.CLIX = get("CliX");
            e.CLIY = get("CliY");
            e.CLIDIM = get("CliDim");            
            e.c = get("c"); // canvas;
            e.downloadLink = get("downloadLink");
            // Get canvas context:
            ctxt = e.c.getContext("2d");


            //testo che va a capo
            function wrapText(context, text, x, y, maxWidth, lineHeight, dim, color, contorn) {
				var n = text.length;
				var j = 0;
				context.font = dim + "px Impact";
				context.fillStyle = color;
				context.strokeStyle = contorn;
				if (text != "") {
				if (parseInt(context.measureText(text).width)>parseInt(maxWidth)) {
					while (parseInt(context.measureText(text).width)>parseInt(maxWidth)) {
						if (n != text.length) {
							var box=text.slice(0, n);
							if (parseInt(context.measureText(box).width)<parseInt(maxWidth)) {
								if ((text[n] == " ") || (text[n] == "-")) {
									var rigab=text.slice(0, n);
									var lung=text.length;
									context.fillText(rigab, x, y);
									context.strokeText(rigab, x, y);
									y=y+lineHeight;
									text=text.slice(n, lung);
									wrapText(context, text, x, y, maxWidth, lineHeight);									
									break;
								}
							}
						}
						if (n==0) {
							var j = text.length;
							if (j!=0) {
								while (j!=0) {
									if (parseInt(context.measureText(text.slice(0, j)).width)<parseInt(maxWidth)) {
										var lung=text.length;
										var rigab=text.slice(0, j);									
										context.fillText(rigab, x, y);
										context.strokeText(rigab, x, y);
										y=y+lineHeight;
										text=text.slice(j, lung);
										wrapText(context, text, x, y, maxWidth, lineHeight);
										break;
									}
									j--;
								}
							} else {
								break;
							}
							break;
						}
						n--
					}
				} else {
					context.fillText(text, x, y);
					context.strokeText(text, x, y);
				}
				}
            }


			
            // Function for rendering memes:
            renderMeme = function () {
                var alt = e.c.height/9;
                ctxt.drawImage(image, 0, 0, e.c.width, e.c.height);
				if (e.CLIX.value=="" || e.CLIY.value=="" || e.CLIDIM.value=="") {
					e.CLIX.value=5;
					e.CLIY.value=5;
					e.CLIDIM.value=225;
				}
				ctxt.drawImage(logo, e.CLIX.value, e.CLIY.value, e.CLIDIM.value,e.CLIDIM.value);
				
				ctxt.font="15px Arial";
				ctxt.fillStyle="white";
				ctxt.strokeStyle="black";
				ctxt.lineWidth=1;
				ctxt.textAlign="left";
				ctxt.fillText("© Fishermen's App.com",1, (e.c.height-4));
				
				ctxt.textAlign="center";
				wrapText(ctxt, e.topline.value, e.c.width / 2, e.c.height/9, e.c.width, ((e.dimtopline.value/100)*106), e.dimtopline.value, e.coltopline.value, e.contopline.value);
				wrapText(ctxt, e.testo1.value, e.c.width / 2, ((e.c.height/9)*2), e.c.width, ((e.dimrig1.value/100)*106), e.dimrig1.value, e.colrig1.value, e.conrig1.value);
				wrapText(ctxt, e.testo2.value, e.c.width / 2, ((e.c.height/9)*3), e.c.width, ((e.dimrig2.value/100)*106), e.dimrig2.value, e.colrig2.value, e.conrig2.value);
				wrapText(ctxt, e.testo3.value, e.c.width / 2, ((e.c.height/9)*4), e.c.width, ((e.dimrig3.value/100)*106), e.dimrig3.value, e.colrig3.value, e.conrig3.value);
				wrapText(ctxt, e.testo4.value, e.c.width / 2, ((e.c.height/9)*5), e.c.width, ((e.dimrig4.value/100)*106), e.dimrig4.value, e.colrig4.value, e.conrig4.value);
				wrapText(ctxt, e.testo5.value, e.c.width / 2, ((e.c.height/9)*6), e.c.width, ((e.dimrig5.value/100)*106), e.dimrig5.value, e.colrig5.value, e.conrig5.value);
				wrapText(ctxt, e.testo6.value, e.c.width / 2, ((e.c.height/9)*7), e.c.width, ((e.dimrig6.value/100)*106), e.dimrig6.value, e.colrig6.value, e.conrig6.value);
				wrapText(ctxt, e.testo7.value, e.c.width / 2, ((e.c.height/9)*8), e.c.width, ((e.dimrig7.value/100)*106), e.dimrig7.value, e.colrig7.value, e.conrig7.value);
				wrapText(ctxt, e.bottomline.value, e.c.width / 2, (e.c.height - e.dimbottomline.value), e.c.width, ((e.dimbottomline.value/100)*106), e.dimbottomline.value, e.colbottomline.value, e.conbottomline.value);
				
            };
			
			
			
            // Event handlers:
            e.ifile.onchange = function () {
                reader.readAsDataURL(e.ifile.files[0]);
                reader.onload = function () {
                    image.src = reader.result;
                    image.onload = function () {
                        // Canvas settings:
                        if (image.width < e.box1.clientWidth) {
                            e.c.width = image.width;
                            e.c.height = image.height;
                        } else {
                            e.c.width = e.box1.clientWidth;
                            e.c.height = image.height * (e.box1.clientWidth / image.width);
                        }
						ctxt.font="45px Impact";
                        ctxt.textAlign = "center";
                        ctxt.fillStyle = "white";
                        ctxt.strokeStyle = "black";
                        ctxt.lineWidth = 2;
                        renderMeme();
                        e.box1.style.display = "none";
                        e.box2.style.display = "";
                    };
                };
            };
			
            e.topline.onkeyup = renderMeme;
			e.dimtopline.onchange = renderMeme;
			e.coltopline.onchange = renderMeme;
			e.contopline.onchange = renderMeme;
			
            e.testo1.onkeyup = renderMeme;
			e.dimrig1.onchange = renderMeme;
			e.colrig1.onchange =  renderMeme;
			e.conrig1.onchange = renderMeme;
			
            e.testo2.onkeyup = renderMeme;
			e.dimrig2.onchange = renderMeme;
			e.colrig2.onchange = renderMeme;
			e.conrig2.onchange = renderMeme;
			
            e.testo3.onkeyup = renderMeme;
			e.dimrig3.onchange = renderMeme;
			e.colrig3.onchange = renderMeme;
			e.conrig3.onchange = renderMeme;
			
            e.testo4.onkeyup = renderMeme;
			e.dimrig4.onchange = renderMeme;
			e.colrig4.onchange = renderMeme;
			e.conrig4.onchange = renderMeme;
			
            e.testo5.onkeyup = renderMeme;
			e.dimrig5.onchange = renderMeme;
			e.colrig5.onchange = renderMeme;
			e.conrig5.onchange = renderMeme;
			
            e.testo6.onkeyup = renderMeme;
			e.dimrig6.onchange = renderMeme;
			e.colrig6.onchange = renderMeme;
			e.conrig6.onchange = renderMeme;
			
            e.testo7.onkeyup = renderMeme;
			e.dimrig7.onchange = renderMeme;
			e.colrig7.onchange = renderMeme;
			e.conrig7.onchange = renderMeme;
			
			e.bottomline.onkeyup = renderMeme;
			e.dimbottomline.onchange = renderMeme;
			e.colbottomline.onchange = renderMeme;
			e.conbottomline.onchange = renderMeme;
			
            e.CLIX.onkeyup = renderMeme;
            e.CLIY.onkeyup = renderMeme;
            e.CLIDIM.onkeyup = renderMeme;			
            
			
            e.downloadLink.onclick = function () {
               ocument.getElementById("my_image").src = e.c.toDataURL;
			   var Nome = prompt("Inserisci il Nome del meme", "AAPCUAR18");
               e.downloadLink.href = e.c.toDataURL();
               e.downloadLink.download = Nome + ".png";
                
            };
        }(this.document, this.FileReader, this.Image));