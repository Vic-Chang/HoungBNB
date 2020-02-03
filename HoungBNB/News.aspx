<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="HoungBNB.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .News_post {
            background-color: #fff;
            border-radius: 4px;
            border: 1px solid #e6ecf0;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 15px;
            margin-bottom: 10px;
        }

            .News_post .posttime {
                font-size: 14px;
                color: darkgray;
            }
    </style>
    <style>
        /*Time Like*/
        .timeline_container {
            width: 16px;
            text-align: center;
            margin: 0 auto;
            cursor: pointer;
            display: block;
        }

        .timeline {
            margin: 0 auto;
            background-color: #e08989;
            display: block;
            height: 100%;
            margin-top: 10px;
            width: 4px;
        }

            .timeline:hover {
                cursor: pointer;
                margin: 0 auto;
            }

            .timeline div.plus {
                width: 14px;
                height: 14px;
                position: relative;
                left: -6px;
            }

        .arrow-right {
            right: 3px;
            margin-top: 8px;
            position: absolute;
            width: 0;
            height: 0;
            border-top: 11px solid transparent;
            border-bottom: 11px solid transparent;
            border-left: 11px solid #e08989;
        }

        .arrow-left {
            left: 3px;
            margin-top: 8px;
            position: absolute;
            width: 0;
            height: 0;
            border-top: 11px solid transparent;
            border-bottom: 11px solid transparent;
            border-right: 11px solid #e08989;
        }
        /*大於765 出現箭頭*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <section>
        <div class="container">
            <div class="row waterfall">
                <%--// Timeline Navigator--%>
                <div class="timeline_container">
                    <div class="timeline">
                        <div class="plus"></div>
                    </div>
                </div>
                <asp:ListView ID="lv_news" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 waterfall-div animated fadeIn ">
                            <div class="News_post">
                                <div class="row">
                                    <div class="col-md-9">
                                        <h2 class="section-heading pull-left"><%# Eval("Name") %></h2>
                                    </div>
                                    <div class="col-md-3 posttime">
                                        <%# Eval("Date") %>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-md-12">
                                    <%# Eval("Msg") %>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script src="JS/masonry.pkgd.min.js"></script>
    <script>
        var $grid = $('.waterfall').masonry({
            itemSelector: '.waterfall-div',
        });

        // First time need to run once.
        add_Arrow_to_TimeLine()

        // bind event listener
        $grid.on('layoutComplete', add_Arrow_to_TimeLine);

        function add_Arrow_to_TimeLine() {
            $('.arrow-left , .arrow-right').remove()
            $('.col-md-6.waterfall-div').each(function (index) {
                if ($(this).css('left').replace('px', '') > 0) {
                    /*LEFT*/
                    $(this).prepend('<div class="arrow-left hidden-sm-down"></div>')
                } else {
                    /*RIGHT*/
                    $(this).prepend('<div class="arrow-right hidden-sm-down"></div>')
                }
            });
        }
    </script>
</asp:Content>
