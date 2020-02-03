<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="HoungBNB.Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            margin-bottom: 32px;
        }

            .card:hover {
                box-shadow: 5px 5px 10px #b1acac;
                -o-transform: scale(1.02);
                -webkit-transform: scale(1.02);
                -moz-transform: scale(1.02);
                transform: scale(1.02);
                -o-transition: all 300ms linear 0s;
                -webkit-transition: all 300ms linear 0s;
                -moz-transition: all 300ms linear 0s;
                transition: all 300ms linear 0s;
                transition-property: all;
                transition-duration: 300ms;
                transition-timing-function: linear;
                transition-delay: 0s;
            }

        @-moz-keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translate3d(-100%, 0, 0);
            }

            to {
                opacity: 1;
                transform: none;
            }
        }

        @-webkit-keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translate3d(-100%, 0, 0);
            }

            to {
                opacity: 1;
                transform: none;
            }
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translate3d(-100%, 0, 0);
            }

            to {
                opacity: 1;
                transform: none;
            }
        }
    </style>
    <style>
        .btn_custom {
            WIDTH: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <section>
        <div class="container">
            <div class="row animated wow fadeInUp">
                <div class="card-deck">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="card">
                            <img class="card-img-top img-fluid" src="http://pic.pimg.tw/vd37551/d5fab89d40fa0b35dad170c8aae148f7.jpg" alt="Card image cap" />
                            <div class="card-block">
                                <h4 class="card-title">精緻雙人房</h4>
                                <p class="card-text">人數 : 兩人</p>
                                <p class="card-text">原價: $ 2600</p>
                                <p class="card-text">優惠: $ 1800</p>
                                <a href="RoomDetail.aspx" class="btn btn_custom">詳細資訊</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="card">
                            <img class="card-img-top img-fluid" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9Bc7BFjlIX7da8AWhXBd9nsBgfp_jrqLDJ6ka2aBVCvNUiio7Q" alt="Card image cap" />
                            <div class="card-block">
                                <h4 class="card-title">溫暖雙人房</h4>
                                <p class="card-text">人數 : 兩人</p>
                                <p class="card-text">原價: $ 2600</p>
                                <p class="card-text">優惠: $ 1800</p>
                                <a href="RoomDetail.aspx" class="btn btn_custom">詳細資訊</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="card">
                            <img class="card-img-top img-fluid" src="http://chientan.cyh.org.tw/wp-content/uploads/2016/05/room1-2.jpg" alt="Card image cap" />
                            <div class="card-block">
                                <h4 class="card-title">北海道單人房</h4>
                                <p class="card-text">人數 : 一人</p>
                                <p class="card-text">原價: $ 3600</p>
                                <p class="card-text">優惠: $ 2800</p>
                                <a href="RoomDetail.aspx" class="btn btn_custom">詳細資訊</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="card">
                            <img class="card-img-top img-fluid" src="https://a0.muscache.com/im/pictures/de29c0c1-fe00-4af7-be4f-6e1cf3a683f8.jpg?aki_policy=x_large" alt="Card image cap" />
                            <div class="card-block">
                                <h4 class="card-title">家庭四人房</h4>
                                <p class="card-text">人數 : 四人</p>
                                <p class="card-text">原價: $ 4600</p>
                                <p class="card-text">優惠: $ 3800</p>
                                <a href="RoomDetail.aspx" class="btn btn_custom">詳細資訊</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="card">
                            <img class="card-img-top img-fluid" src="http://www.starbeauty-hotel.com.tw/images/Deluxe-Quad-Room-807-2.jpg" alt="Card image cap" />
                            <div class="card-block">
                                <h4 class="card-title">歐式四人房</h4>
                                <p class="card-text">人數 : 四人</p>
                                <p class="card-text">原價: $ 4600</p>
                                <p class="card-text">優惠: $ 3800</p>
                                <a href="RoomDetail.aspx" class="btn btn_custom">詳細資訊</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script src="http://www.twstay.com/js/RWD2/wow.min.js"></script>
</asp:Content>
