<%-- 
    Document   : login
    Created on : May 19, 2022, 1:37:39 PM
    Author     : THAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="/">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <style type="text/css">svg:not(:root).svg-inline--fa{
            overflow:visible
        }
        .svg-inline--fa{
            display:inline-block;
            font-size:inherit;
            height:1em;
            overflow:visible;
            vertical-align:-.125em
        }
        .svg-inline--fa.fa-lg{
            vertical-align:-.225em
        }
        .svg-inline--fa.fa-w-1{
            width:.0625em
        }
        .svg-inline--fa.fa-w-2{
            width:.125em
        }
        .svg-inline--fa.fa-w-3{
            width:.1875em
        }
        .svg-inline--fa.fa-w-4{
            width:.25em
        }
        .svg-inline--fa.fa-w-5{
            width:.3125em
        }
        .svg-inline--fa.fa-w-6{
            width:.375em
        }
        .svg-inline--fa.fa-w-7{
            width:.4375em
        }
        .svg-inline--fa.fa-w-8{
            width:.5em
        }
        .svg-inline--fa.fa-w-9{
            width:.5625em
        }
        .svg-inline--fa.fa-w-10{
            width:.625em
        }
        .svg-inline--fa.fa-w-11{
            width:.6875em
        }
        .svg-inline--fa.fa-w-12{
            width:.75em
        }
        .svg-inline--fa.fa-w-13{
            width:.8125em
        }
        .svg-inline--fa.fa-w-14{
            width:.875em
        }
        .svg-inline--fa.fa-w-15{
            width:.9375em
        }
        .svg-inline--fa.fa-w-16{
            width:1em
        }
        .svg-inline--fa.fa-w-17{
            width:1.0625em
        }
        .svg-inline--fa.fa-w-18{
            width:1.125em
        }
        .svg-inline--fa.fa-w-19{
            width:1.1875em
        }
        .svg-inline--fa.fa-w-20{
            width:1.25em
        }
        .svg-inline--fa.fa-pull-left{
            margin-right:.3em;
            width:auto
        }
        .svg-inline--fa.fa-pull-right{
            margin-left:.3em;
            width:auto
        }
        .svg-inline--fa.fa-border{
            height:1.5em
        }
        .svg-inline--fa.fa-li{
            width:2em
        }
        .svg-inline--fa.fa-fw{
            width:1.25em
        }
        .fa-layers svg.svg-inline--fa{
            bottom:0;
            left:0;
            margin:auto;
            position:absolute;
            right:0;
            top:0
        }
        .fa-layers{
            display:inline-block;
            height:1em;
            position:relative;
            text-align:center;
            vertical-align:-.125em;
            width:1em
        }
        .fa-layers svg.svg-inline--fa{
            -webkit-transform-origin:center center;
            transform-origin:center center
        }
        .fa-layers-counter,.fa-layers-text{
            display:inline-block;
            position:absolute;
            text-align:center
        }
        .fa-layers-text{
            left:50%;
            top:50%;
            -webkit-transform:translate(-50%,-50%);
            transform:translate(-50%,-50%);
            -webkit-transform-origin:center center;
            transform-origin:center center
        }
        .fa-layers-counter{
            background-color:#ff253a;
            border-radius:1em;
            -webkit-box-sizing:border-box;
            box-sizing:border-box;
            color:#fff;
            height:1.5em;
            line-height:1;
            max-width:5em;
            min-width:1.5em;
            overflow:hidden;
            padding:.25em;
            right:0;
            text-overflow:ellipsis;
            top:0;
            -webkit-transform:scale(.25);
            transform:scale(.25);
            -webkit-transform-origin:top right;
            transform-origin:top right
        }
        .fa-layers-bottom-right{
            bottom:0;
            right:0;
            top:auto;
            -webkit-transform:scale(.25);
            transform:scale(.25);
            -webkit-transform-origin:bottom right;
            transform-origin:bottom right
        }
        .fa-layers-bottom-left{
            bottom:0;
            left:0;
            right:auto;
            top:auto;
            -webkit-transform:scale(.25);
            transform:scale(.25);
            -webkit-transform-origin:bottom left;
            transform-origin:bottom left
        }
        .fa-layers-top-right{
            right:0;
            top:0;
            -webkit-transform:scale(.25);
            transform:scale(.25);
            -webkit-transform-origin:top right;
            transform-origin:top right
        }
        .fa-layers-top-left{
            left:0;
            right:auto;
            top:0;
            -webkit-transform:scale(.25);
            transform:scale(.25);
            -webkit-transform-origin:top left;
            transform-origin:top left
        }
        .fa-lg{
            font-size:1.3333333333em;
            line-height:.75em;
            vertical-align:-.0667em
        }
        .fa-xs{
            font-size:.75em
        }
        .fa-sm{
            font-size:.875em
        }
        .fa-1x{
            font-size:1em
        }
        .fa-2x{
            font-size:2em
        }
        .fa-3x{
            font-size:3em
        }
        .fa-4x{
            font-size:4em
        }
        .fa-5x{
            font-size:5em
        }
        .fa-6x{
            font-size:6em
        }
        .fa-7x{
            font-size:7em
        }
        .fa-8x{
            font-size:8em
        }
        .fa-9x{
            font-size:9em
        }
        .fa-10x{
            font-size:10em
        }
        .fa-fw{
            text-align:center;
            width:1.25em
        }
        .fa-ul{
            list-style-type:none;
            margin-left:2.5em;
            padding-left:0
        }
        .fa-ul>li{
            position:relative
        }
        .fa-li{
            left:-2em;
            position:absolute;
            text-align:center;
            width:2em;
            line-height:inherit
        }
        .fa-border{
            border:solid .08em #eee;
            border-radius:.1em;
            padding:.2em .25em .15em
        }
        .fa-pull-left{
            float:left
        }
        .fa-pull-right{
            float:right
        }
        .fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{
            margin-right:.3em
        }
        .fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{
            margin-left:.3em
        }
        .fa-spin{
            -webkit-animation:fa-spin 2s infinite linear;
            animation:fa-spin 2s infinite linear
        }
        .fa-pulse{
            -webkit-animation:fa-spin 1s infinite steps(8);
            animation:fa-spin 1s infinite steps(8)
        }
        @-webkit-keyframes fa-spin{
            0%{
                -webkit-transform:rotate(0);
                transform:rotate(0)
            }
            100%{
                -webkit-transform:rotate(360deg);
                transform:rotate(360deg)
            }
        }
        @keyframes fa-spin{
            0%{
                -webkit-transform:rotate(0);
                transform:rotate(0)
            }
            100%{
                -webkit-transform:rotate(360deg);
                transform:rotate(360deg)
            }
        }
        .fa-rotate-90{
            -webkit-transform:rotate(90deg);
            transform:rotate(90deg)
        }
        .fa-rotate-180{
            -webkit-transform:rotate(180deg);
            transform:rotate(180deg)
        }
        .fa-rotate-270{
            -webkit-transform:rotate(270deg);
            transform:rotate(270deg)
        }
        .fa-flip-horizontal{
            -webkit-transform:scale(-1,1);
            transform:scale(-1,1)
        }
        .fa-flip-vertical{
            -webkit-transform:scale(1,-1);
            transform:scale(1,-1)
        }
        .fa-flip-both,.fa-flip-horizontal.fa-flip-vertical{
            -webkit-transform:scale(-1,-1);
            transform:scale(-1,-1)
        }
        :root .fa-flip-both,:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{
            -webkit-filter:none;
            filter:none
        }
        .fa-stack{
            display:inline-block;
            height:2em;
            position:relative;
            width:2.5em
        }
        .fa-stack-1x,.fa-stack-2x{
            bottom:0;
            left:0;
            margin:auto;
            position:absolute;
            right:0;
            top:0
        }
        .svg-inline--fa.fa-stack-1x{
            height:1em;
            width:1.25em
        }
        .svg-inline--fa.fa-stack-2x{
            height:2em;
            width:2.5em
        }
        .fa-inverse{
            color:#fff
        }
        .sr-only{
            border:0;
            clip:rect(0,0,0,0);
            height:1px;
            margin:-1px;
            overflow:hidden;
            padding:0;
            position:absolute;
            width:1px
        }
        .sr-only-focusable:active,.sr-only-focusable:focus{
            clip:auto;
            height:auto;
            margin:0;
            overflow:visible;
            position:static;
            width:auto
        }
        .svg-inline--fa .fa-primary{
            fill:var(--fa-primary-color,currentColor);
            opacity:1;
            opacity:var(--fa-primary-opacity,1)
        }
        .svg-inline--fa .fa-secondary{
            fill:var(--fa-secondary-color,currentColor);
            opacity:.4;
            opacity:var(--fa-secondary-opacity,.4)
        }
        .svg-inline--fa.fa-swap-opacity .fa-primary{
            opacity:.4;
            opacity:var(--fa-secondary-opacity,.4)
        }
        .svg-inline--fa.fa-swap-opacity .fa-secondary{
            opacity:1;
            opacity:var(--fa-primary-opacity,1)
        }
        .svg-inline--fa mask .fa-primary,.svg-inline--fa mask .fa-secondary{
            fill:#000
        }
        .fad.fa-inverse{
            color:#fff
        }</style><link rel="icon" type="image/jpeg" href="https://upload.wikimedia.org/wikipedia/vi/8/80/FPT_New_Logo.png">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js" integrity="sha512-USPCA7jmJHlCNRSFwUFq3lAm9SaOjwG8TaB8riqx3i/dAJqhaYilVnaf2eVUH5zjq89BU6YguUuAno+jpRvUqA==" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

        <script src="/js/html2canvas.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.1.1/jspdf.umd.min.js" integrity="sha512-/Am09zlYshHgRizY3RkConGj4BsYIdb8mS7r5XAXw0rTiLgGSHzpUHTQBhinWR32C/KzLr749J1xuORzT2JnRA==" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="/vendor/web/css/theme.min.css">
        <link rel="stylesheet" href="/vendor/core-ui/css/free.min.css">
        <link rel="stylesheet" href="/vendor/core-ui/css/flag.min.css">

        <script src="/vendor/core-ui/js/coreui.bundle.min.js"></script>


        <title>Đăng nhập</title>
        <link rel="stylesheet" href="/css/web.css">

        <link rel="stylesheet" href="/css/auth.css">


        <link rel="stylesheet" href="/css/app.css">

        <script>
            const csrf_token = '7zxFqwWGd9BXy9g2a7WNjMjOrLLVZ8SXBjA28FtH';
            const locale = 'vi';
        </script>
    </head>
    <body class="h-100 c-app flex-row align-items-center">

        <script>
            $('body').addClass('c-app flex-row align-items-center');
        </script>

        <div class="container-fluid" id="login">
            <div class="limiter">
                <div class="container-login100">
                    <div class="wrap-login100 row">
                        <div class="js-tilt logoLogin col-lg-7 col-sm-12 mb-5" data-tilt="">
                            <img class="w-100" src="/images/logo-fpt-login.png" alt="logo fpt">
                            <span class="text-center logo-title d-flex align-items-center pt-3">
                                PHÒNG QUAN HỆ DOANH NGHIỆP<br>PHÂN HIỆU TRƯỜNG ĐẠI HỌC FPT TẠI THÀNH PHỐ HỒ CHÍ MINH
                            </span>
                        </div>
                        <div class="col-lg-5 col-sm-12 d-flex justify-content-center">
                            <form class="w-100 validate-form" method="post" action="https://career-hcmuni.fpt.edu.vn/login" onsubmit="App.UI.ShowLoading();">
                                <input type="hidden" name="_token" value="7zxFqwWGd9BXy9g2a7WNjMjOrLLVZ8SXBjA28FtH">						<!-- <span class="login100-form-title">
Đăng nhập vào tài khoản của bạn
</span> -->

                                <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                                    <input class="input100" name="username" placeholder="Tên đăng nhập" value="" required="" autofocus="">
                                    <span class="focus-input100"></span>
                                    <span class="symbol-input100">
                                        <svg class="svg-inline--fa fa-envelope fa-w-16" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="envelope" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z"></path></svg><!-- <i class="fa fa-envelope" aria-hidden="true"></i> -->
                                    </span>
                                </div>

                                <div class="wrap-input100 validate-input" data-validate="Password is required">
                                    <input class="input100" name="password" type="password" placeholder="Mật khẩu" required="">
                                    <span class="focus-input100"></span>
                                    <span class="symbol-input100">
                                        <svg class="svg-inline--fa fa-lock fa-w-14" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="lock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z"></path></svg><!-- <i class="fa fa-lock" aria-hidden="true"></i> -->
                                    </span>
                                </div>

                                <div class="container-login100-form-btn">
                                    <button class="login100-form-btn" type="submit">
                                        Đăng nhập
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div id="loading"></div>
        <div id="message-modal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Thông báo</h5>
                    </div>
                    <div class="modal-body">
                        <div id="message"></div>
                    </div>
                    <div class="modal-footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-3"></div>
                                <div class="col-xl-6">
                                    <button class="btn btn-primary w-100" data-dismiss="modal">OK</button>
                                </div>
                                <div class="col-xl-3"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="i-cv-container">
            <iframe id="i-cv"></iframe>
        </div>

        <script>
            $(document).ready(() => {
                $('.img-base64').click(function () {
                    $(this).prev().click();
                });
            });

            const convertImageToBase64 = (event) => {
                let files = event.target.files;
                if (files && files.length) {
                    let reader = new FileReader();

                    reader.addEventListener('load', function (e) {
                        $(event.target).next().attr('src', e.target.result);
                    });

                    reader.readAsDataURL(files[0]);
                }
            }

            const initializeDataTable = (url = '', extConfigs = {}, selector = '#datatable1', rowClickRedirect = true) => {
                if ($(selector).length) {
                    $(selector).DataTable().destroy();

                    let configs = {
                        pageLength: 25,
                        serverSide: true,
                        scrollX: true,
                        autoWidth: true,
                        destroy: true,
                        order: [],
                        ajax: function (data, callback, settings) {
                            App.Feature.Get(url, data, (response) => {
                                if (response.result) {
                                    callback(response.data);
                                } else {
                                    App.UI.ShowMessage(response.data ? response.data : response.message);
                                }
                            });
                        },
                        drawCallback: function (settings) {
                            onSelectDatatableRow(selector, rowClickRedirect);
                        }
                    };

                    for (let propertyName in extConfigs) {
                        configs[propertyName] = extConfigs[propertyName];
                    }

                    setTimeout(() => {
                        $(selector).DataTable(configs);
                    });
            }
            }

            const onSelectDatatableRow = (selector, rowClickRedirect) => {
                let table = $(selector).DataTable();

                $(selector + ' tbody').off('click.cell');
                $(selector + ' tbody').on('click.cell', 'td', function () {
                    let selectedTr = $(this).parent();
                    if (selectedTr.hasClass('selected')) {
                        selectedTr.removeClass('selected');
                    } else {
                        table.$('tr.selected').removeClass('selected');
                        selectedTr.addClass('selected');
                    }

                    if (rowClickRedirect && !$(this).hasClass('no-redirect')) {
                        let id = selectedTr.find('.objId:first').val();
                        let link = selectedTr.find('.objLink:first').val();
                        if (link) {
                            window.open(link, '_blank');
                        } else {
                            if (id) {
                                location.href += '/' + id + '';
                            }
                        }
                    }
                });
            }

            const reloadAjaxDataTable = (selector = '#datatable1') => {
                $(selector).DataTable().ajax.reload()
            }

            const downloadCVPDF = (cvUrl) => {
                App.UI.ShowLoading();

                const arrTmp = cvUrl.split('/');
                const fileName = arrTmp[arrTmp.length - 1].replace('html', 'pdf');

                $('#i-cv').attr('src', cvUrl);
                $('#i-cv').on('load', function () {
                    html2canvas($('#i-cv')[0].contentDocument.body).then(canvas => {
                        setTimeout(() => {
                            let imgData = canvas.toDataURL('image/png');
                            let doc = new jspdf.jsPDF('p', 'mm', [canvas.height * 0.264, canvas.width * 0.264]);
                            doc.addImage(imgData, 'PNG', 0, 0);
                            doc.save(fileName);

                            App.UI.HideLoading();
                        }, 500);
                    });
                });
            }
        </script>
        <script src="/js/app.js"></script>


    </body>
</html>
