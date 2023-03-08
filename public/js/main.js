
$(document).ready(function() {


    $('.comfort-extend').hide();

    $("#comfort").click(function(e)  {
        e.preventDefault();

        $('.comfort-extend').toggle();
    })

    $("#savepicklocation").click(function(e) {
        $('#modal-default').modal('hide');
    })

    // Р”РѕР¶РґС‘РјСЃСЏ Р·Р°РіСЂСѓР·РєРё API Рё РіРѕС‚РѕРІРЅРѕСЃС‚Рё DOM.
    ymaps.ready(init);

    function init () {
        // РЎРѕР·РґР°РЅРёРµ СЌРєР·РµРјРїР»СЏСЂР° РєР°СЂС‚С‹ Рё РµРіРѕ РїСЂРёРІСЏР·РєР° Рє РєРѕРЅС‚РµР№РЅРµСЂСѓ СЃ
        // Р·Р°РґР°РЅРЅС‹Рј id ("map").
        var myPlacemark, myMap = new ymaps.Map('map', {
            // РџСЂРё РёРЅРёС†РёР°Р»РёР·Р°С†РёРё РєР°СЂС‚С‹ РѕР±СЏР·Р°С‚РµР»СЊРЅРѕ РЅСѓР¶РЅРѕ СѓРєР°Р·Р°С‚СЊ
            // РµС‘ С†РµРЅС‚СЂ Рё РєРѕСЌС„С„РёС†РёРµРЅС‚ РјР°СЃС€С‚Р°Р±РёСЂРѕРІР°РЅРёСЏ.
            center: [41.31, 69.27], // РњРѕСЃРєРІР°
            zoom: 15
        }, {
            searchControlProvider: 'yandex#search'
        });


        myMap.events.add('click', function (e) {
            var coords = e.get('coords');

            console.log(coords, "asd")

            // Р•СЃР»Рё РјРµС‚РєР° СѓР¶Рµ СЃРѕР·РґР°РЅР° вЂ“ РїСЂРѕСЃС‚Рѕ РїРµСЂРµРґРІРёРіР°РµРј РµРµ.
            if (myPlacemark) {
                myPlacemark.geometry.setCoordinates(coords);
            }
            // Р•СЃР»Рё РЅРµС‚ вЂ“ СЃРѕР·РґР°РµРј.
            else {
                myPlacemark = createPlacemark(coords);
                myMap.geoObjects.add(myPlacemark);
                // РЎР»СѓС€Р°РµРј СЃРѕР±С‹С‚РёРµ РѕРєРѕРЅС‡Р°РЅРёСЏ РїРµСЂРµС‚Р°СЃРєРёРІР°РЅРёСЏ РЅР° РјРµС‚РєРµ.
                myPlacemark.events.add('dragend', function () {
                    getAddress(myPlacemark.geometry.getCoordinates());
                });
            }

            ymaps.geocode(coords).then(function (res) {
                var firstGeoObject = res.geoObjects.get(0);
                $("#hotels-address").attr('value', firstGeoObject.getAddressLine())
                $("#hotels-latitude").attr('value', coords[0])
                $("#hotels-longitude").attr('value', coords[1])
            })

        });

        // РЎРѕР·РґР°РЅРёРµ РјРµС‚РєРё.
        function createPlacemark(coords) {
            return new ymaps.Placemark(coords, {
                // iconCaption: 'РїРѕРёСЃРє...'
            }, {
                preset: 'islands#violetDotIconWithCaption',
                draggable: true
            });
        }

        // РћРїСЂРµРґРµР»СЏРµРј Р°РґСЂРµСЃ РїРѕ РєРѕРѕСЂРґРёРЅР°С‚Р°Рј (РѕР±СЂР°С‚РЅРѕРµ РіРµРѕРєРѕРґРёСЂРѕРІР°РЅРёРµ).
        function getAddress(coords) {
            myPlacemark.properties.set('iconCaption', 'РїРѕРёСЃРє...');
            ymaps.geocode(coords).then(function (res) {
                var firstGeoObject = res.geoObjects.get(0);

                myPlacemark.properties
                    .set({
                        // Р¤РѕСЂРјРёСЂСѓРµРј СЃС‚СЂРѕРєСѓ СЃ РґР°РЅРЅС‹РјРё РѕР± РѕР±СЉРµРєС‚Рµ.
                        iconCaption: [
                            // РќР°Р·РІР°РЅРёРµ РЅР°СЃРµР»РµРЅРЅРѕРіРѕ РїСѓРЅРєС‚Р° РёР»Рё РІС‹С€РµСЃС‚РѕСЏС‰РµРµ Р°РґРјРёРЅРёСЃС‚СЂР°С‚РёРІРЅРѕ-С‚РµСЂСЂРёС‚РѕСЂРёР°Р»СЊРЅРѕРµ РѕР±СЂР°Р·РѕРІР°РЅРёРµ.
                            firstGeoObject.getLocalities().length ? firstGeoObject.getLocalities() : firstGeoObject.getAdministrativeAreas(),
                            // РџРѕР»СѓС‡Р°РµРј РїСѓС‚СЊ РґРѕ С‚РѕРїРѕРЅРёРјР°, РµСЃР»Рё РјРµС‚РѕРґ РІРµСЂРЅСѓР» null, Р·Р°РїСЂР°С€РёРІР°РµРј РЅР°РёРјРµРЅРѕРІР°РЅРёРµ Р·РґР°РЅРёСЏ.
                            firstGeoObject.getThoroughfare() || firstGeoObject.getPremise()
                        ].filter(Boolean).join(', '),
                        // Р’ РєР°С‡РµСЃС‚РІРµ РєРѕРЅС‚РµРЅС‚Р° Р±Р°Р»СѓРЅР° Р·Р°РґР°РµРј СЃС‚СЂРѕРєСѓ СЃ Р°РґСЂРµСЃРѕРј РѕР±СЉРµРєС‚Р°.
                        balloonContent: firstGeoObject.getAddressLine()
                    });
            });
        }



    }


    $('#location').click(function(e) {
        e.preventDefault();
        $('#modal-default').modal('show');

    })

    $('#hotels-region_id').select2();
    $('#hotels-comfortables').select2();




    // $(".dateTimePicker").daterangepicker({
    //     format: 'dd/mm/yyyy HH:ii P',
    //     autoclose: true,
    //     todayBtn: false,
    //     timePicker: true,
    //     singleDatePicker: true, //<==HERE
    // });

    $('#hotels-photos_room').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[photos_room]'").attr('value', data.data.link)
            $('.photos_room').attr('src', data.data.link);

        });
    })





    $('#hotels-photos_front').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[photos_front]'").attr('value', data.data.link)
            $('.photos_front').attr('src', data.data.link);

        });
    })

    $('#hotels-photos_bathroom').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[photos_bathroom]'").attr('value', data.data.link)
            $('.photos_bathroom').attr('src', data.data.link);

        });
    })

    $('#hotels-photos_breakfast').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[photos_breakfast]'").attr('value', data.data.link)
            $('.photos_breakfast').attr('src', data.data.link);

        });
    })

    $('#hotels-photos_other').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[photos_other]'").attr('value', data.data.link)
            $('.photos_other').attr('src', data.data.link);

        });
    })

    $('#hotels-main_photo').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[main_photo]'").attr('value', data.data.link)
            $('.main_photo').attr('src', data.data.link);

        });
    })



    $('#hotels-photos_reception').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Hotels[photos_reception]'").attr('value', data.data.link)
            $('.photos_reception').attr('src', data.data.link);

        });
    })

    $('#rooms-photo').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Rooms[photo]'").attr('value', data.data.link)
            $('.photo_first').attr('src', data.data.link);

        });
    })

    $('#rooms-photo_second').on('change', function() {
        const $files = $(this).get(0).files;

        var apiUrl = 'https://api.imgur.com/3/image';
        var apiKey = '3ae05dad72ea4ec';

        var settings = {
            async: true,
            crossDomain: true,
            processData: false,
            contentType: false,
            type: 'POST',
            url: apiUrl,
            headers: {
                Authorization: 'Client-ID ' + apiKey,
                Accept: 'application/json'
            },
            mimeType: 'multipart/form-data'
        };

        var formData = new FormData();
        formData.append("image", $files[0]);
        settings.data = formData;

        // Response contains stringified JSON
        // Image URL available at response.data.link
        $.ajax(settings).done(function(response) {
            const data = JSON.parse(response)
            $("input[name='Rooms[photo_second]'").attr('value', data.data.link)
            $('.photo_second').attr('src', data.data.link);

        });
    })

});
