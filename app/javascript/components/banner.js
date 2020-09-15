import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#search_query', {
    strings: ["Search by name or ingredient"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
