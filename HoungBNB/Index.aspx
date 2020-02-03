<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HoungBNB.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .media-wrapper {
            height: 242px;
        }

        .list-group-item.active {
            background-color: #f3d4e4;
            border-color: #c7b9b9;
        }

        .News-List h5 {
            font-weight: bold;
        }

        .list-group-item.active p {
            color: #366328;
        }

        .list-group-item.active small {
            color: gray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <!-- BOXED CONTENT -->
    <section>
        <div class="container">
            <div class="row">
                <div class="animated fadeIn col-md-6">
                    <div class="boxed-content left-aligned left-boxed-icon">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <h2 class="boxed-content-title">我們的願望</h2>
                        <p>給每個來客一個最溫暖的家</p>
                    </div>
                </div>
                <div class="animated fadeIn col-md-6">
                    <div class="boxed-content left-aligned left-boxed-icon">
                        <i class="fa fa-globe"></i>
                        <h2 class="boxed-content-title">我們提供</h2>
                        <p>我們每間房都提供冷氣、溫暖的棉被</p>
                    </div>
                </div>
                <div class="animated fadeIn col-md-6">
                    <div class="boxed-content left-aligned left-boxed-icon">
                        <i class="fa fa-cog"></i>
                        <h2 class="boxed-content-title">高貴不貴</h2>
                        <p>每間房都是最高貴，但卻不會花費昂貴</p>
                    </div>
                </div>
                <div class="animated fadeIn col-md-6">
                    <div class="boxed-content left-aligned left-boxed-icon">
                        <i class="fa fa-users"></i>
                        <h2 class="boxed-content-title">我們擁有</h2>
                        <p>我們不是老闆，而是像家人。我們擁有一顆最熱情的心</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END BOXED CONTENT -->
    <!-- RECENT WORKS -->
    <section>
        <div class="container">
            <h2 class="section-heading pull-left">房型介紹</h2>
            <a href="Room.aspx" class="btn btn_custom pull-right">查看所有房型</a>
            <div class="clearfix"></div>
            <div class="portfolio-static">
                <div class="row">
                    <div class="col-md-4">
                        <div class="portfolio-item">
                            <div class="overlay"></div>
                            <div class="info">
                                <h4 class="title">溫暖房間</h4>
                                <p class="brief-description">讓人相當放鬆的舒適客房</p>
                                <a href="RoomDetail.aspx" class="btn">詳細資訊</a>
                            </div>
                            <div class="media-wrapper">
                                <img src="http://img.ltn.com.tw/Upload/style/page/2016/02/04/160204-2958-2-po2xY.jpg" alt="Item Thumbnail" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="portfolio-item">
                            <div class="overlay"></div>
                            <div class="info">
                                <h4 class="title">北海道房間</h4>
                                <p class="brief-description">北海道風格的房間</p>
                                <a href="RoomDetail.aspx" class="btn">詳細資訊</a>
                            </div>
                            <div class="media-wrapper">
                                <img src="https://cache.marriott.com//propertyimages/l/lhrbr/phototour/lhrbr_phototour48.jpg" alt="Item Thumbnail" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="portfolio-item">
                            <div class="overlay"></div>
                            <div class="info">
                                <h4 class="title">歐式房間</h4>
                                <p class="brief-description">一間充滿歐洲風情的房間，2~6人房型 多種選擇</p>
                                <a href="RoomDetail.aspx" class="btn">詳細資訊</a>
                            </div>
                            <div class="media-wrapper">
                                <img src="http://www.midtownrichardson.com/upload/%E5%93%81%E7%89%8C%E9%A6%96%E9%A0%81%E5%9C%96%E7%89%87/SNK00.jpg" alt="Item Thumbnail" />
                                <%--373*233--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- END RECENT WORKS -->
    <!-- RECENT WORKS -->
    <section>
        <div class="container News">
            <h2 class="section-heading pull-left">最新消息</h2>
            <a href="News.aspx" class="btn btn_custom pull-right">查看所有消息</a>
            <div class="clearfix"></div>
            <div class="list-group News-List">
                <asp:ListView ID="lv_news" runat="server">
                    <ItemTemplate>
                        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start <%# Container.DataItemIndex==0?"active":"" %>" data-toggle="modal" data-target="#exampleModal<%# Container.DataItemIndex%>">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1"><%# Eval("Name") %></h5>
                                <small><%# Eval("Date") %></small>
                            </div>
                            <p class="mb-1"><%# Eval("Msg") %></p>
                            <small>(點擊查看詳細)</small>
                        </a>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal<%# Container.DataItemIndex%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel"><%# Eval("Name") %></h5>
                                    </div>
                                    <div class="modal-body">
                                        <%# Eval("MsgDetail") %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </section>


    <!-- END RECENT WORKS -->
    <!-- TESTIMONIAL -->
    <section>
        <div class="container">
            <h2 class="section-heading pull-left">關於我們</h2>
            <div class="clearfix"></div>
            <section class="testimonial slick-carousel margin-bottom-30px">
                <div style="font-size: 1.5em">
                    <asp:Literal ID="ltr_about" runat="server"></asp:Literal>
                </div>
            </section>
            <hr class="margin-bottom-50px">
        </div>
    </section>
    <!-- END TESTIMONIAL -->
    <!-- Modal -->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h3>Dialog</h3>
        </div>
        <div class="modal-body">
            <iframe src="" style="zoom: 0.60" width="99.6%" height="250" frameborder="0"></iframe>
        </div>
        <div class="modal-footer">
            <button class="btn" data-dismiss="modal">OK</button>
        </div>
    </div>
    <!-- END Modal -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script>
        var frameSrc = "/login";

        $('#openBtn').click(function () {
            $('#myModal').on('show', function () {

                $('iframe').attr("src", frameSrc);

            });
            $('#myModal').modal({ show: true })
        });
    </script>
</asp:Content>
