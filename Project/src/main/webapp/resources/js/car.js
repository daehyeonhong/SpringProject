/**
 * car.js
 */

console.log("Car Module");

let carService = (function () {
  function listCar(parameter, callback, error) {
    let manufacturer_seq = parameter.manufacturer_seq;
    let segment_seq = parameter.segment_seq;
    $.getJSON('/car/carList/' + manufacturer_seq + '/' + segment_seq + '.json', function (data) {
      if (callback) {
        callback(data.list);
      }
    }).fail(function (xhr, status, error) {
      if (error) {
        error();
      }
    });
  }

  return { listCar: listCar };

})();