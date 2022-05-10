fetch('https://provinces.open-api.vn/api/')
  .then(response => {
    console.log(response);
    if (!response.ok) throw new Error(`Request failed: ${response.status}`);
    return response.json();
  })
  .then(data => {
    // console.log(data);
    data.forEach(city => {
      console.log(city.name);
      html = `<li>${city.name}</li>`;
      document.querySelector('ul').insertAdjacentHTML('beforeend', html);
    });
  })
  .catch(err => {
    err => console.log(err);
  });
