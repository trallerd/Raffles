import axios from "axios";

document.addEventListener('turbolinks:load', () => {
    const button = document.querySelector('#btn-buy-ticket');
    if (!button) return;
    button.addEventListener('click', () => {
        const { url } = button.dataset;
        axios
            .get(url)
            .then((response) => {
                console.log(response);
            })
            .catch((error) => {
                console.log(error);
            });
    });
});