<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="HoungBNB.Maps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .googlemaps {
            width: 100%;
            height: 475px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <section>
        <div class="container">
            <h2 class="section-heading pull-left">交通指引</h2>
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-6 animated fadeIn">
                    <iframe frameborder="0" style="border: 0" class="googlemaps"
                        src="http://maps.google.com.tw/maps?f=q&hl=zh-TW&geocode=&q=700台灣台南市中西區武聖路69巷97號&z=16&output=embed&t="
                        allowfullscreen></iframe>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <h3 class="sr-only">關於我們</h3>
                    <h3 style="color:#4757b5;">
                        九四五三民宿 
                    </h3>
                    <br />
                    <h4>搭乘大眾運輸:</h4>
                    <p>1.接駁車: 台南火車站 > 搭 61 號公車 > 走路5分鐘</p>
                    <p>2.接駁車: 台南火車站 > 搭 61 號公車 > 走路5分鐘</p>
                    <h4>開車路線</h4>
                    <p>1.沿著台三線 > 中華路二段左轉 > 直行 300 公尺 > 看見家樂福右轉 > 直行中正路 > 至3段左轉 > 抵達本民宿</p>
                    <br />
                    <span style="color:gray;line-height:0.8">
                    <p>
                        台南市中正路16號 
                    </p>
                    <p>
                        電話訂房專線：0922-123-11 
                    </p>
                    <p>
                        傳真：1222-120-22 
                    </p>
                    <p>
                        Line@：@LineMeAtHere  
                    </p>
                    <p>
                        Email: email@yourdomain.com
                    </p>
                    <p>
                        客服電話：02-2973-2215 
                    </p></span>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
