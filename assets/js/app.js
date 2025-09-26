let left_btn = document.getElementsByClassName('bi-chevron-left')[0];
let right_btn = document.getElementsByClassName('bi-chevron-right')[0];
let cards = document.getElementsByClassName('cards')[0];
let search = document.getElementsByClassName('search')[0];
let search_input = document.getElementById('search_input');

left_btn.addEventListener('click', () => {
    cards.scrollLeft -= 140;
})
right_btn.addEventListener('click', () => {
    cards.scrollLeft += 140;
})

let video = document.getElementById('video');
let base_url = video.getAttribute('url');
// let json_url = `${base_url}/assets/json/movie.json`;


let api_url = `${base_url}index.php/welcome/getMovies`;

fetch(api_url+'?limit=10&offset=0').then(Response => Response.json())
    .then((data) => {
        data.forEach((ele, i) => {
            let { name, imdb, date, sposter, bposter, genre, url, id } = ele;
            let card = document.createElement('a');
            card.classList.add('card');
             card.href = base_url+`movie_deatils?${id}`;
            card.innerHTML = `
            <img src="${base_url}assets/img/${sposter}" alt="${name}" class="poster">
            <div class="rest_card">
                <img src="${base_url}assets/img/${bposter}" alt="">
                <div class="cont">
                    <h4>${name}</h4>
                    <div class="sub">
                        <p>${genre}, ${date}</p>
                        <h3><span>IMDB</span><i class="bi bi-star-fill"></i> ${imdb}</h3>
                    </div>
                </div>
            </div>
            `
            cards.appendChild(card);
        });

        document.getElementById('title').innerText = data[0].name;
        document.getElementById('gen').innerText = data[0].genre;
        document.getElementById('date').innerText = data[0].date;
        document.getElementById('rate').innerHTML = `<span>IMDB</span><i class="bi bi-star-fill"></i> ${data[0].imdb}`;


        let searchData = async (value) => {
            search.innerHTML = '';
            try {
                await fetch(api_url+`?limit=10&offset=0&value=${value}`).then(Response => Response.json())
                    .then((result) => {
                        // search data  load 
                        result.forEach(element => {
                            console.log(result)
                            let { name, imdb, date, sposter, genre, url , id} = element;
                            let card = document.createElement('a');
                            card.classList.add('card');
                            card.href = base_url+`movie_deatils?${id}`;
                            card.innerHTML = `
                           <img src="${base_url}/assets/img/${sposter}" alt="">
                           <div class="cont">
                               <h3>${name} </h3>
                               <p>${genre}, ${date} , <span>IMDB</span><i class="bi bi-star-fill"></i> ${imdb}</p>
                           </div>
                        `;
                            search.appendChild(card);
                        });
                    })
            } catch (error) {
                console.log(error);
            }

        }

        // search filter  
        search_input.addEventListener('keyup', () => {
            let filter = search_input.value;
            searchData(filter);
        })

        let video = document.getElementsByTagName('video')[0];
        let play = document.getElementById('play');
        play.addEventListener('click', () => {
            if (video.paused) {
                video.play();
                play.innerHTML = `Play <i class="bi bi-pause-fill"></i>`
            } else {
                video.pause();
                play.innerHTML = `Watch <i class="bi bi-play-fill"></i>`
            }
        })

        let series = document.getElementById('series');
        let movies = document.getElementById('movies');

        series.addEventListener('click', () => {
            cards.innerHTML = '';

            let series_array = data.filter(ele => {
                return ele.type === "series";
            });

            series_array.forEach((ele, i) => {
                let { name, imdb, date, sposter, bposter, genre, url , id } = ele;
                let card = document.createElement('a');
                card.classList.add('card');
                card.href = base_url+`movie_deatils?${id}`;
                card.innerHTML = `
                <img src="${sposter}" alt="${name}" class="poster">
                <div class="rest_card">
                    <img src="${bposter}" alt="">
                    <div class="cont">
                        <h4>${name}</h4>
                        <div class="sub">
                            <p>${genre}, ${date}</p>
                            <h3><span>IMDB</span><i class="bi bi-star-fill"></i> ${imdb}</h3>
                        </div>
                    </div>
                </div>
                `
                cards.appendChild(card);
            });


        })
        movies.addEventListener('click', () => {
            cards.innerHTML = '';

            let movie_array = data.filter(ele => {
                return ele.type === "movie";
            });

            movie_array.forEach((ele, i) => {
                let { name, imdb, date, sposter, bposter, genre, url , id} = ele;
                let card = document.createElement('a');
                card.classList.add('card');
                card.href = base_url+`movie_deatils?${id}`;
                card.innerHTML = `
                <img src="${sposter}" alt="${name}" class="poster">
                <div class="rest_card">
                    <img src="${bposter}" alt="">
                    <div class="cont">
                        <h4>${name}</h4>
                        <div class="sub">
                            <p>${genre}, ${date}</p>
                            <h3><span>IMDB</span><i class="bi bi-star-fill"></i> ${imdb}</h3>
                        </div>
                    </div>
                </div>
                `
                cards.appendChild(card);
            });


        })

    });