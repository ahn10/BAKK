import 'slider-pro';
import 'owl.carousel/dist/owl.carousel.min';
import RunCommon from './../common/run_common';
import toast  from 'toastr';
import 'jquery-modal'
import html2canvas from 'html2canvas';
import jsPDF from  'jsPDF'
var Cart = {
    init(){
        this.deleteItemTransaction();
        this.jsIncreaseQty();
        this.jsReductionQty();
        this.showInvoiceTransaction()
        this.exportPdfTransaction();
    },

    exportPdfTransaction()
    {
        $(".js-export-pdf").click(function (event) {
            event.preventDefault();
            let html = `<i class="fa fa-spin fa-spinner" aria-hidden="true"></i> Processing`;
            let $this = $(this);
            $this.html(html);
            const filename  = 'invoice.pdf';

            html2canvas(document.querySelector('#wrapper'),
                {scale: 1}
            ).then(canvas => {
                let pdf = new jsPDF('p', 'mm', 'A4');
                pdf.addImage(canvas.toDataURL('image/png'), 'PNG',0,0,0,0);
                pdf.save(filename);
                $this.html('Export PDF')
            });
        })
    },
    showInvoiceTransaction()
    {
        $(".js-show-invoice_transaction").click( function(event){
            event.preventDefault();
            let $this = $(this);
            let URL = $this.attr('href');

            $.ajax({
                url: URL,
                async: false,
            }).done(function( results ) {
                $("#popup-transaction .content").html(results.html)
                $("#popup-transaction").modal({
                    escapeClose: false,
                    clickClose: false,
                    showClose: false
                });
            });
        });
    },

    deleteItemTransaction()
    {
        $(".js-delete-item").click( function(event){
            event.preventDefault();
            let $this = $(this);
            let url    = $this.attr('href');

            if(url) {
                $.ajax({
                    url: url,
                }).done(function( results ) {
                    toast.success(results.messages);
                    $this.parents('tr').remove();
                    $("#sub-total").text(results.totalMoney+ " $");
                });
            }
        })

    },
    jsReductionQty()
    {
        $('.js-reduction').click(function (event) {
            let $this  = $(this);
            let $input = $this.parent().prev();
            let number = parseInt($input.val());
            if (number <= 1) {
                toast.warning("Quantity must greater than or equal to 1");
                return false;
            }

            let URL       = $this.parent().attr('data-url');
            let productID = $this.parent().attr("data-id-product");


            number = number - 1;
            $.ajax({
                url: URL,
                data: {
                    qty        : number,
                    idProduct  : productID
                }
            }).done(function( results ) {
                if (typeof results.totalMoney !== "undefined") {
                    $input.val(number);
                    $("#sub-total").text("$"+results.totalMoney);
                    toast.success(results.messages);
                    $this.parents('tr').find(".js-total-item").text(results.totalItem +' $');
                }else {
                    $input.val(number + 1);
                }
            });
        })
    },

    jsIncreaseQty()
    {
        $('.js-increase').click(function (event) {
            event.preventDefault();
            let $this = $(this);
            let $input = $this.parent().prev();
            let number = parseInt($input.val());
            if (number >= 10) {
                toast.warning("You can't buy more than 10 of this item at one time");
                return false;
            }

            let price = $this.parent().attr('data-price');
            let URL = $this.parent().attr('data-url');
            let productID = $this.parent().attr("data-id-product");

            number = number + 1;
            $.ajax({
                url: URL,
                data: {
                    qty        : number,
                    idProduct  : productID
                }
            }).done(function( results ) {
                if (typeof results.totalMoney !== "undefined") {
                    $input.val(number);
                    $("#sub-total").text("$"+results.totalMoney);
                    toast.success(results.messages);
                    $this.parents('tr').find(".js-total-item").text('$'+results.totalItem);
                }else {
                    $input.val(number - 1);
                }
            });
        })
    }

};
$(function () {
    Cart.init();
    RunCommon.init();
    $(".js-menu-cate").mouseenter(function(){
        $("#menu-main").show();
    })
});
