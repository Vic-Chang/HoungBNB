<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="HoungBNB.Notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .notice-info {
            font-size: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <section>
        <div class="container animated fadeIn">
            <h2 class="section-heading pull-left">入住、退房時間：</h2>
            <div class="clearfix"></div>
            <div class="col-md-12 notice-info">
                <p>※ 入住 (Check in)時間為 下午15:00 以後</p>
                <p>※ 退房(Check out)時間為 中午11:00 以前</p>
                <p>※ 禁止攜帶寵物</p>
                <p>※ 如入住時間較晚，請先電話通知</p>
            </div>

            <h2 class="section-heading pull-left">更改訂房：</h2>
            <div class="clearfix"></div>
            <div class="col-md-12 notice-info">
                <p>入住日前3日(含)內，恕不接受訂單更改。</p>
                <p>同筆訂單限更改乙次，一經更改，原訂單將同步取消，且更改後之訂單恕不接受『保留訂房』及『取消訂房』。</p>
                <p>更改後新訂單金額：高於原訂單者，須補付訂金差額；低於原訂單者，訂金差額將依原訂單「取消訂房」之規定，計算「取消手續費」，扣取「新訂單房款訂金」與「原訂單取消手續費」後，再辦理退款。</p>
                <p>更改後訂房款差額的補款方式如下：</p>
                <p>※可使用信用卡或ATM轉帳補款：請於收到更改訂房之通知後，務必於規定日前完成補款，逾時未入帳者，其更改訂單不成立，且原訂單將依取消訂房規定處理。</p>
                <p>更改後訂房款差額的退款方式如下：</p>
                <p>(1) 使用信用卡線上付款者，其退款將直接退回原使用之信用卡帳戶內。</p>
                <p>(2) 使用ATM付款者，其退款扣取匯費30元後，退回訂房者本人帳戶內。</p>
            </div>

            <h2 class="section-heading pull-left">保留訂房：</h2>
            <div class="clearfix"></div>
            <div class="col-md-12 notice-info">
                <p>入住日前3日(含)內，恕不接受訂單保留。</p>
                <p>保留訂房係指原訂的入住日因故無法如期入住，且實際入住日尚待確認，故先選擇訂房保留處理。</p>
                <p>保留訂房，其入住安排僅限原預訂飯店，不可更改入住其他飯店。</p>
                <p>每筆訂單限保留乙次，且須於保留期限內安排入住；未於保留期限內安排入住者，視同放棄住房權益，訂房金額將不予退還。</p>
                <p>保留訂房於安排新入住日房型時，新房價與原訂單房價若發生價差，皆依更改訂房相關規定辦理。</p>
                <p>保留後之訂單恕不接受『取消訂房』。</p>
            </div>

            <h2 class="section-heading pull-left">取消訂房：</h2>
            <div class="clearfix"></div>
            <div class="col-md-12 notice-info">
                <p>入住日當日取消或入住日當天未入住(no show)者，扣取房價預付訂金 100% 。</p>
                <p>旅客於住宿日前1日內取消訂房扣房價預付訂金金額80%。</p>
                <p>旅客於住宿日前2-3日內取消訂房扣房價預付訂金金額70%。</p>
                <p>旅客於住宿日前4-6日內取消訂房扣房價預付訂金金額60%。</p>
                <p>旅客於住宿日前7-9日內取消訂房扣房價預付訂金金額50%。</p>
                <p>旅客於住宿日前10-13日內取消訂房扣房價預付訂金金額30%。</p>
                <p>旅客於住宿日前14日前(含14日)取消訂房扣房價預付訂金金額0%。</p>

                <p>以上取消訂房應扣取之房價皆以新台幣計算之。</p>
                <p>有關海外人士取消訂房，請根據退房確認函上之新台幣金額作為確認；信用卡帳單上之刷退金額，將由各國際信用卡組織及發卡銀行依據其結算匯率計收手續費。</p>
            </div>

            <h2 class="section-heading pull-left">特殊因素：</h2>
            <div class="clearfix"></div>
            <div class="col-md-12 notice-info">
                <p>如預訂住宿當日，遇颱風、地震等不可抗拒因素時(以本縣市政府頒布狀況為判定準則)，請以電話聯絡本飯店客服人員，依本飯店規定處理之。如無故不依訂房日期入住，則本網站將依照規定不退還已收之訂房費用。</p>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
