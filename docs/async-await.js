
//n'utilise pas les callback c'est inmaintenable 
// le mieux c'est async/await les plus simple à lire et celui qui retourne moins le cerveau
//Utilise Promise.all pour éxécuter en parallèle, ca va bcp plus vite 

function asyncStuff() {
	return new Promise((resolve,reject) => {
  	setTimeout(() => resolve("result"),1000)
  })
}

function otherAsyncStuff(res) {
	return new Promise((resolve,reject) => {
  	setTimeout(() => resolve("result2 "+res),1000)
  })
}


// 2 fonctions asyncrhones qui s'éxécute l'une apres l'autre car la 2eme a besoin du résultat de la premiere


//bof
asyncStuff()
	.then(otherAsyncStuff)
  .then(result => console.log(result))
  
//mieux
async function call() {
		let resA = await asyncStuff()
    let resB = await otherAsyncStuff(resA)
    console.log(resB)
}
call()


// Si tu dois éxécuter  fcts asynchrones en parallelle mais attendre qu'elle soit toutes finies

let promises = [asyncStuff(),asyncStuff()]
Promise.all(promises).then(res => console.log(res))

//ATTENTION avec async/await


async function aFunc() {
	let result = await bFunc()
  console.log(result)
}

async function bFunc() {
	return await cFunc()
}

async function cFunc() {

	return new Promise((resolve,reject) => {
  	setTimeout(() => resolve("async/await"),1000)
  })
}

aFunc()
