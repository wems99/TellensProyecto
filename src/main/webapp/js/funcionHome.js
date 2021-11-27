
const API_KEY = 'api_key=9f6dc8938efadfbe99f1e18d1e5b210d';
const BASE_URL = 'https://api.themoviedb.org/3';
const API_URL = BASE_URL + '/discover/movie?sort_by=popularity.desc&'+API_KEY;
const IMG_URL = 'https://image.tmdb.org/t/p/w500';
const searchURL = BASE_URL + '/search/movie?'+API_KEY;


function getMovies() {
    const url =API_URL;
    const lastUrl = url;
    fetch(url).then(res => res.json()).then(data => {
        console.log(data.results)
        if(data.results.length !== 0) {
            showMovies(data.results);
        }
    })
}
function showMovies(data) {
    data.forEach(movie => {
        const {title, poster_path, vote_average, overview, id} = movie;
        movie.id;
        fetch(`http://localhost:8080/TellensProyecto_war/Datos?id=${id}&titulo=${title}&imagen=${poster_path}`
            ,{method:"post"});
    })
}

function cargar(){

}