<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="RoomDetail.aspx.cs" Inherits="HoungBNB.RoomDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <section>
        <!-- 2. Add images to <div class="fotorama"></div>. -->
        <div class="d-flex justify-content-center">
            <div class="col-sm-12 col-md-10 col-lg-8">
                <div class="fotorama"
                    data-nav="thumbs"
                    data-width="100%"
                    data-transition="slice"
                    data-loop="true"
                    data-shuffle="true"
                    data-keyboard="true"
                    data-arrows="true"
                    data-click="true"
                    data-swipe="true"
                    data-trackpad="true">
                    <img src="https://www.nbth.co.jp/translate/chinese/img/room/room-2/1.jpg" />
                    <img src="https://a0.muscache.com/im/pictures/de29c0c1-fe00-4af7-be4f-6e1cf3a683f8.jpg?aki_policy=x_large" />
                    <img src="http://chientan.cyh.org.tw/wp-content/uploads/2016/05/room1-2.jpg" />
                    <img src="http://www.starbeauty-hotel.com.tw/images/Deluxe-Quad-Room-807-2.jpg" />
                    <img src="http://www.starbeauty-hotel.com.tw/images/Deluxe-Quad-Room-807-3.jpg" />
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <h2 class="section-heading pull-left">房間定價</h2>
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-6">
                    <table class="table">
                        <thead>
                            <tr>
                                <th></th>
                                <th>優惠價格</th>
                                <th>加人</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info">
                                <td>平日價格</td>
                                <td>$ 2500</td>
                                <td>$ 600/人</td>
                            </tr>
                            <tr class="table-danger">
                                <td>假日價格</td>
                                <td>$ 3500</td>
                                <td>$ 800/人</td>
                            </tr>
                            <tr class="table-warning">
                                <td>特殊節日</td>
                                <td>$ 4500</td>
                                <td>$ 1000/人</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-6">
                    <p>平假日定義</p>
                    <p>平日：星期日至星期四。</p>
                    <p>假日：星期五、星期六及暑假之平/假日。</p>
                    <p>特殊節日：國定假日、連續假期。</p>
                    <p>最多加2人</p>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-3">

                    <h2 class="section-heading pull-left">匯款資訊</h2>
                    <div class="clearfix"></div>
                    <div>
                        <p>臺灣銀行</p>
                        <p>銀行代碼: 004</p>
                        <p>帳號: 056002103311</p>
                        <p>戶名: 陳爺爺</p>
                        <p>匯款通知</p>
                        <p>請於訂房後三日內完成訂金匯款。預訂春節客房，請預付房價全額之訂金，謝謝您。</p>
                        <p>匯款完成後煩請來電告知入住人姓名、匯款日期、匯款金額、帳號末5碼、入住日期、預訂房型等資訊。</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <h2 class="section-heading pull-left">房內設施</h2>
                    <div class="clearfix"></div>
                    <div>
                        <p>※	附贈美味早餐</p>
                        <p>※	免費WIFI</p>
                        <p>※	分離式冷氣</p>
                        <p>※	42吋液晶電視、有線頻道</p>
                        <p>※	乾濕分離衛浴</p>
                        <p>※	礦泉水</p>
                        <p>※	盥洗用品、吹風機</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
    <script>
        $(function ()
        { $('#carousel-hero').remove() })
    </script>
</asp:Content>
