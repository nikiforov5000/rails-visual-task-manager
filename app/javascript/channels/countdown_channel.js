let timersCount = 0;
let pause = true; //is timer paused

countTimers();

function countTimers() {
  timersCount++;

  let count = document.querySelector('#count').innerHTML;
  const counter = setInterval(timer, 1000);

  function timer() {
    if (!pause) { //do something if not paused
      count = count - 1;
      
      // Time calculations for days, hours, minutes and seconds
      let days = Math.floor(count / (1000 * 60 * 60 * 24));
      let hours = Math.floor((count % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      let minutes = Math.floor((count % (1000 * 60 * 60)) / (1000 * 60));
      let seconds = Math.floor((count % (1000 * 60)) / 1000);


      if (count < 0) {
        clearInterval(counter);
        setTimeout(countTimers, 5000); //start count from 26 again
        return;
      } 

      document.getElementById("timer").innerHTML = count;
    }
  }

  document.getElementById("countTimers").innerHTML = timersCount;
}

document.querySelector('.task-container').addEventListener('click', (event) => {
  let status = document.querySelector('#pause');
  if ( pause ) {
    status.innerHTML = "Pause";
  }
  else {
    status.innerHTML = "Start";
  }
	pause = !pause;
});
