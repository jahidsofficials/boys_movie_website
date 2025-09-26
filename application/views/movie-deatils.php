<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?=  base_url('/assets/css/style.css'); ?>">
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <title>The Boys | MOVIES</title>
</head>

<body>
    <header>
        <video src="<?= base_url('/assets/video/theboys.webm');?>" autoplay muted url='<?= base_url();?>' id="video"></video>
        <nav>
            <div class="logo_ul">
                <img src="<?= base_url('/assets/img/logo.png') ?>" alt="">
                <ul>
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li>
                        <a href="#" id="series">Series</a>
                    </li>
                    <li>
                        <a href="#" id="movies">Movies</a>
                    </li>
                    <li>
                        <a href="#">Kids</a>
                    </li>
                </ul>
            </div>
            <div class="search_user">
                <input type="text" placeholder="Search..." id="search_input">
                 <img src="<?= base_url('/assets/img/user.jpg'); ?>" alt="">
                <div class="search">
                    <!-- <a href="#" class="card">
                        <img src="img/the boys.jpg" alt="">
                        <div class="cont">
                            <h3>The Boys </h3>
                            <p>Action, 2021 , <span>IMDB</span><i class="bi bi-star-fill"></i> 9.6</p>
                        </div>
                    </a> -->
                </div>
            </div>
        </nav>
        <div class="content">
            <h1 id="title">Money Heist</h1>
            <p>A criminal mastermind who goes by "The Professor" has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain.</p>
            <div class="details">
                <h6>A Netflix Original Film</h6>
                <h5 id="gen">Thriller</h5>
                <h4 id="date">2021</h4>
                <h3 id="rate"><span>IMDB</span><i class="bi bi-star-fill"></i> 9.6</h3>
            </div>
            <div class="btns">
                <a href="#" id="play">Watch <i class="bi bi-play-fill"></i></a>
                <a href="#" download="The Boys 480ph" id="low_q">480ph</a>
                <a href="#" download="The Boys 720ph" id="medium_q">720ph</a>
                <a href="#" download="The Boys 1080ph" id="high_q">1080ph</a>
            </div>
        </div>
        <section>
            <h4>Popular</h4>
            <i class="bi bi-chevron-left"></i>
            <i class="bi bi-chevron-right"></i>
            <div class="cards">
                <!-- <a href="#" class="card">
                    <img src="img/the boys.jpg" alt="" class="poster">
                    <div class="rest_card">
                        <img src="img/the boys1.jpg" alt="">
                        <div class="cont">
                            <h4>The Boys</h4>
                            <div class="sub">
                                <p>Action, 2022</p>
                                <h3><span>IMDB</span><i class="bi bi-star-fill"></i> 9.6</h3>
                            </div>
                        </div>
                    </div>
                </a> -->
            </div>
        </section>
    </header>
     <!-- JS -->
    <script src="<?= base_url('/assets/js/app.js')?>"></script>
    <script>
        let api_url_find_movie = `${base_url}index.php/welcome/getFindMovies`;
        fetch(api_url_find_movie+`?id=${window.location.href.split('?')[1]}`).then((Response) => Response.json())
            .then(data => {
                console.log(data)
                // let data = data.filter(ele => {
                //     return ele.name === "The Boys";
                // });

                document.getElementById('title').innerText = data[0].name;
                // document.getElementsByTagName('video')[0].setAttribute('src', data[0].trailer)
                // document.getElementsByTagName('video')[0].play();
                document.getElementById('low_q').href = data[0].low;
                document.getElementById('medium_q').href = data[0].medium;
                document.getElementById('high_q').href = data[0].high;
                document.getElementById('gen').innerText = data[0].genre;
                document.getElementById('date').innerText = data[0].date;
                document.getElementById('rate').innerHTML = `<span>IMDB</span><i class="bi bi-star-fill"></i> ${data[0].imdb}`;

            })
    </script>
</body>

</html>