import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find your favorite ingredients and mix your own cocktails "],
    typeSpeed: 50,
    loop: true,
 
  });
}

export { loadDynamicBannerText };
