/**
 * 
 */
window.onload=function(){
	let selects=document.getElementsByTagName("select");
	let hiddens=document.getElementsByTagName("input");
	let result=0;
	for(let i = 0; i<selects.length; i++){
		selects[i].addEventListener("change",function(){
			let price1=parseInt(selects[0].value)*1000000;
			let price2=parseInt(selects[1].value)*1500000;
			result=price1+price2;
			//console.log(result);
			document.getElementsByTagName("h1")[1].innerHTML=result.toLocaleString()+"원"
			
			hiddens[0].value=selects[0].value;
			hiddens[1].value=selects[1].value;
		})
	}
}