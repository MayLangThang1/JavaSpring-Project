<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
       <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
         
         <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <!-- Google Fonts Roboto -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
    <!-- MDB -->
    <link rel="stylesheet" href="css/mdb.min.css" />
    <!-- Custom styles -->
    <link rel="stylesheet" href="css/style.css" />
    
      <!-- Roboto Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap"> 
  Font Awesome
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  Bootstrap core CSS
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
  Material Design Bootstrap
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
  Material Design Bootstrap Ecommerce
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
  <!-- Your custom styles (optional) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
     
           <style>
      /* Carousel styling */
      #introCarousel,
      .carousel-inner,
      .carousel-item,
      .carousel-item.active {
        height: 100vh;
      }

      .carousel-item:nth-child(1) {
        background-image: url('https://bizweb.dktcdn.net/100/422/387/themes/813817/assets/slider_1.jpg?1655200428928');
        background-repeat: no-repeat;
        background-size: 100% 100%;
        background-position: center center;
      }

      .carousel-item:nth-child(2) {
        background-image: url('https://bizweb.dktcdn.net/100/422/387/themes/813817/assets/slider_2.jpg?1655200428928');
        background-repeat: no-repeat;
        background-size: 100% 100%;
        background-position: center center;
      }

      .carousel-item:nth-child(3) {
        background-image: url('data:image/jpeg;base64,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');
        background-repeat: no-repeat;
        background-size: 100% 100%;
        background-position: center center;
      }

      /* Height for devices larger than 576px */
      @media (min-width: 992px) {
        #introCarousel {
          margin-top: -58.59px;
        }
      }

      .navbar .nav-link {
        color: #fff !important;
      }
    </style>
    
    </head>
    <body class="skin-light" onload="loadAmountCart()">
        <jsp:include page="Menu.jsp"></jsp:include>
       
        
        
 <!-- Carousel wrapper -->
    <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel" style="margin-top:35px;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
      </ol>

      <!-- Inner -->
      <div class="carousel-inner">
        <!-- Single item -->
        <div class="carousel-item active">
         
        </div>

        <!-- Single item -->
        <div class="carousel-item">
          
        </div>

        <!-- Single item -->
        <div class="carousel-item">
          
        </div>
      </div>
      <!-- Inner -->

      <!-- Controls -->
      <a class="carousel-control-prev" href="#introCarousel" role="button" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#introCarousel" role="button" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- Carousel wrapper -->


            
            <div class="card-group" style="margin-top:50px;">
  <div class="card" style="border-style: none;">
    <img style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_truck_1291768-1.png">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">GIAO HÀNG TOÀN QUỐC</h5>
      <p class="card-text" style="text-align:center">Vận chuyển khắp Việt Nam</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_payment_1954199-3.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">THANH TOÁN KHI NHẬN HÀNG</h5>
      <p class="card-text" style="text-align:center">Nhận hàng tại nhà rồi thanh toán</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_service_repair_phone_mobile_wrench_screw_driver_4014703-1.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">BẢO HÀNH DÀI HẠN</h5>
      <p class="card-text" style="text-align:center">Bảo hàng lên đến 60 ngày</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://giayxshop.vn/wp-content/uploads/2019/11/iconfinder_refresh_3017918-1.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">ĐỔI HÀNG DỄ DÀNG</h5>
      <p class="card-text" style="text-align:center">Đổi hàng thoải mái trong 30 ngày</p>
    </div>
  </div>
</div>
            
           
            <div class="container">
              
        
            
              
             <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="moiNhat">SẢN PHẨM MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentMoiNhat" class="row">
                        <c:forEach items="${list8Last}" var="o">
                            <div class=" col-12 col-md-6 col-lg-3">
                                <div class="card">
                                <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                   
                                     </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price}00₫</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                  
                </div>

            </div>
            
            
             <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="nike">GIÀY NIKE MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentNike" class="row">
                        <c:forEach items="${list4NikeLast}" var="o">
                            <div class="productNike col-12 col-md-6 col-lg-3">
                                <div class="card">
                                 <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price}00 ₫</p>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                   <button onclick="loadMoreNike()" class="btn btn-primary">Load more</button>
                </div>
            </div>
            
            
              <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="adidas">GIÀY ADIDAS MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentAdidas" class="row">
                        <c:forEach items="${list4AdidasLast}" var="o">
                            <div class="productAdidas col-12 col-md-6 col-lg-3">
                                <div class="card">
                                <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price}00₫</p>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                   <button onclick="loadMoreAdidas()" class="btn btn-primary">Load more</button>
                </div>
            </div>
            
            
             <div class="row" style="margin-top:50px">            
                    <div class="col-sm-12">
                        <div id="content" class="row">
                            <div class=" col-12 col-md-12 col-lg-6">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00;">Về chúng tôi</h4>
                                        <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;">Vault</h2>
                                        <p style="text-align:center;">Uy tín lâu năm chuyên cung cấp giày thể thao sneaker nam, nữ hàng  
                                         Auth với chất lượng đảm bảo và giá tốt nhất tại Hà Nội, tpHCM và Đà Nẵng.</p>
										<p>Bạn đang cần tìm một đôi giày thể thao sneaker đẹp và hợp thời trang và đang hot Trends 
										đến từ các thương hiệu lớn nhưng lại không đủ hầu bao để sắm được hàng chính hãng? 
										Hãy đến với Vault – nơi bạn thỏa lòng mong ước mà chỉ phải chi ra 1 phần nhỏ so với dòng chính hãng ngoài store 
										mà vẫn sắm cho mình được một đôi chất lượng  auth.</p>                  
                                    </div>  
                            </div>
                            <div class=" col-12 col-md-12 col-lg-6">
                                    <img class="card-img-top" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBcUFBUYGBcaGhcbGhobGxcdHRsbHBoaGyAbGxobIC8kGx0qIBsbJTYlKS4wMzMzGiQ5PjkyPSwyMzABCwsLEA4QHRISHTIpIikyMjIyMzQyMjIyMDIyNDAyMjIyMjI1MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjAyMv/AABEIAKgBLAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgMEAQIHAAj/xABMEAACAQIEAgYFBwcLBAIDAQABAhEAAwQSITEFQQYTIlFhcTJygZGxI0JSobLB0QcUM1NzkvAVFiQ0YoKTs8LS4UOi0/Fjw1SDozX/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAqEQACAgICAQMDAwUAAAAAAAAAAQIREjEDIUETUWEiQnGRocEEFDKB8P/aAAwDAQACEQMRAD8AY2w1WktgGRWBW01SIZhzVW5Vh6rXaGCIYqC6PlLXlc+AqytV8QflLX9/4Csp6/2i47L9talC0F4r0hsYUfKNr9EamhC/lDsmctm6Y8UFaIQ6BazFJKflItH/AKF395K2f8o1kMENi7JiNU5+2gByK1oVoHwrpjhr7hO1adoCi4AASZgBgSJ0OhimAigCtdXak/pUv9Isez7a06XhtSb0u/TWf4+ctPwT5GNVq1aFQqKmQ00Sy9ZNXEaqFtqso9aRZDRbz1ozVHmrDPVORKiR3KqXFqyzVA1ZyNYkGWuccTX5a7+0f7RrpcVzbiU9ddA/WXPtGs2Uiqg1q9Zcgaa1WDjYVPacTrQhsvnMQCdDUZvaRyqNLp11rBM86qxUau+Xv8qqYiSJq3iUnaPbVNyQCNKljRTZaZOja/Jt5t8KXnFMXRr9E3mfhUPaK8MbkFb2bclj4L99YSruGt+l7KOV9r8/wLj0/wABVLcKP450qYl8putExcuGPYlOrJ2RSZjLLHrgBBNy5EjT5sGDoRpWE7evZmsV7/BLwxAqb9xJPMwCSamOMt/rE/eFLvFithraXD1zM6BRnIVdpnINYObSI0qj/LeFBKrhCQCRIt2iDHOW1rSLklqiXVjoKyKpu5ZC9u5baEbQFdwJnz9v/EVnG3Shc22DQCFEMOUiVM9/L21b5IonBhBhVa+KrvxG52WSyWT5MMSGXtPcVDlkSVUZiTHMba1Ze8jhikkAHYHcCSIOs+FKU0lbBRb0QIap454a2e4t8BVu2hIYgSBExyqhj39DzPwok/p/QI7OY8cdrl52JJ7RA8gSP+fbWmCt+nNSYn0z6x+JrfDDV62EVLdnes422BeteJWrFsaNUeP/AEtnzWgDL2xr5D4XK6x0VxzXsKjuZdS9tj35GIBPiVyz4zXLm/D43K6D+T5pw1wd15/rS2fvpMBiv8qTemP6SyfBvtLTnf29tJPTNoe15N8Vo8E+RjfF21dbbXEDt6KFgGbyXc7VLiMXbtgG5cRATALsFBPcJ3NKvTnCHJbxNv07DhtN8sifgD7DVFseuPxtjL+hsoLr7xmMNlPiDlHsamgo6L1oUFmIAAJJJgADUknkK2weLt3FD23V0MwykMDBg6jxpM6acXU2DYtPL3SFMBjCyJBygwT6PtNVehHEBhmuYW4xZS2a2ypcMzowgL2dgde807JofcTxK1bZEuXFRnMIGMFjIEDv1I99YxPErVt0t3Liq7mEUnVjIED2ke+knpvfVr+AZZIF6NiNc9vkwrbpp/XuHn/5P9dugKHJeI2muNZFxTcUZmSe0BpqR3aj31W4hxnD2WC3rqW2IkBjBImJpWwP/wDuXv2P+m3R/pXbU4PEEgSLVyD3dk0MaRNgeOYa8+S1eR3gnKpkwNzSRjELYm6q7m5c9naOtMfQC2PzG0YE9vX/APY1D+G2g2Nvg8mun/8AoKljR7D8AUiWJJq0vALfj7zTHbsL3VMLC91TQ8hY/kG34+81Hd4EsdlmHt/Gm783XurDYZO6igs5ribDW36t/MHvH3GqmJt91NXS3C5QrDvj6jSu+1A0RDx1pj6N/om8z99LTGmTo5+iPmfvqXtD8McLVF8Imh8YoVhl2o5h1OU+VTy7X5Hx6ZaxhlSsxIO29Kh4R2FFxmnXYmDrPmdxRR8XpcIIJUgd8Ex9zL9dC8Dii95s2vZaJJ02M93KnHpFSXVszjej9u5kJOUJGUxsY8edWMP0ewwWGUMe9iwJ9g0os9vMNeZJ90D7qWOI8SKPHeJ+s/hWebYY0gLbUq2cImbUSUQ6HQ7itlttmzrNs91s5V/cHZ+qrv5s0ZoMTHtqxYwrHUAkeVW0SmeuYu4rqbb9nIgZSpYExrrmBnlr3V445luMwgoxBYMDI7yMuh074qxbwzHZSfIGtbuFcgwrGCdgajtFG54xaY9W1oOgiHkrBiJNuNCO8EnuoHibK586loNwSWIOY5TqpABIiB2hOlX7WDadQR5gitcVa7KftF+y1S3SGl2cwxQ+Ub1m+JrfDbv5V7HLFx/Xb7RrODGr+VdZka2ho1QcR/SWfNfjVi1s1VuJ/pLPrL8RTAsN94+3cp+/J0fkLv7Y/XatGkJv9Q/zHp8/Jwfkb37Uf5NqkwGjE7e2kPp68G0fX/00+Yn0fbXPvyjbWj+0+AoWifI3YmwLiMjCVYEEd4OhoV0X6OLg1cZs7ORLFYhRsNz3k+2jQqQGgQIxHA+sxdvEPcOVBC247ObXtEzqZM7chW+P4CLmJs4lXKNb3AAIdeYMnuLD20WWpFpgC+PcCt4pUDFkZGzI6EAqdO8eA91V7PRstet3sRfe81v0AwRVUzMwgEmQPcKPithTAXcX0aLYpsVbv3LVxlC9kIdIAjtA/RFWl4Nca3dt3cTcuLcQp2ggyyCCVyqNdefdRkVkCkBQ4JwxcNZSyrFgubVokyxbkI50t8I/r2I9a79sU6Um8M/r2I9a59sUmNDbbqUGobdSA0CJQa8TWgNZJoAWemP6MesPg1Jhpw6YH5NfWHwNKECKmRaK900zdGTNs8tT99LTCNaY+i57HPflqd22FS9ofhjThcU0x1ij1bZJ+Bpl4c8g9pm31Zcs+YgRSvhLhn07o9W2v+2mPhjzOrnfVhB25wN/urLmf+P5L41sDxFq406s93X1WK/6aocCBN8eqfiB99TNiJwwPLrsWPdduD7xUfBHHXoBzDA+yD91XB9MvmXUfx/I4tt7CffJrlfSPEj84fwgDXkBXVH2Pl9wrh/HcZ8u57zPvrHiVtinpHWcYyWbb3bs9XOsDNEmBos86B4Ppnhyy21tXQSVGyEdoxmkNqvOe6j17jGGyEPmdWLLorENEBtVHiNaSOL8HKXbn5uiBLbIVNxwXOaMyKNnUGdQ0x7zrF3shof8Dj7LAm2wIAkwDMTEwdd5B7oNEGuKwgbxPs7/ACpE4fiFtlXuKGcrmY2yy6mez2WkPEA6xRm50gWPk7WyArmLCGzRlJg/N1nXaPGlKPsxr5LOOXL1hIY5AGYAEnKZ7QA9Ib7UGd1e2jDUG4kbjke+jOE4r1oOe2sr6PZVonZhm9EzMjw3qjjsQXCyBlF23lAVVymDm23B7uXjWUtMqOzknEh8tc/aP9s1jBek9S8VX5a5+0ufbNRYH0nrsWjIwg9KqvFfTs+svxFXFHpVT4pvZ9ZfjTEWH/1D/MNPP5Nj8jd/aJ/k26Rrn+of5pp4/Jufkbv7RP8AKt0MBsxJ7PtpB/KCsra/v/AU+4o9n2ikLp9OS1He/wABQtEvY3WzoPIVMKr4dpVT/ZX4VODQI3FSrUS1utUBIK3FRithQBuK2FaA1uDQBmKSuGf17Eetd+2KdaSOGH+n4iObXf8AMWpY0NyGpAahQ1IDQIkBrDNWJrVjSGLXTE/Jr64+DUoOBuKbOmB+THrj4GkvPE1LKRs7aUydGG7MePfH0ufKlcNNMXRg9nlvz23fek9orwxtwwadr3sYfjRzhT6t+l3PpcuyPS/tfdS9hkk6ID6lwiivC27Tdm6Ic7tKjsD0tdW7vCsuVW4/n+B8en/3kDcRi1bW2D2VvOwkaxcdXMnY9pnHkBW/CP6xb8A31K29VulSTbD69kzEmDpzHPlUnBHzX0jYI/1gj76qKpP5L5JqSil4VfuO+MfLbuN3KT9VfP8AxK/29/mr8K7vxt4w949yP9k1894y72/Yv2RU8C7YuV9I7MLQjYVDcQUXGCcrOUwN505+NarwxmIGwIzTE6a/X+NFDsAFdalS3vW/EFW1cS2kXXdoKpcthgN8wB30V9Occt6I8OxqLf8Azci0LqhWIKEswnUAk6PGsd003SHi2RYCy8wnOJ05VnEJCjwup94oj/LSFmR16pwYCPHb9Rhox207u+sX8G7r2QPSRpJA2M86xnpoI7OOcZHy9z9pc+2aq4D02q7xtYxN0f8AyXPtmqOAPbau1aMSU/OqlxT/AKXrrVw7NVPifo2vXWgCe7z8/wD7KePyc/orvrp/lrSLeOh8/wD7Kd/ydH5O761v7H/FDEbdKOKXkv8AV27hRBbttAVDLM1wEksD9EUu457l0AXLjOBJEhBH7qijnSuw35xnyXGDW0UZEVoKvcJnM6x6Q79jQQ2W/VX/APDt/wDlqHIMWSWcdfVQq33CqAAItGANAJKTTTwni1trFp7l23nZELSyDtFQTpOmtKi4e5+pv/uW/wDyUAtdE8V+r+P3CnGS8sWLOq/yrY/X2v8AET8a2HGsMN8RZ/xLf41zJeiuJ/V/U3+2s/zUxP6v6n/21pkvcWL9jqFjjGHc5Uv2mbuW5bJ08Aas/nlv9Yn7y/jXJ7XRDE5wWQZdZ0uHl6lXx0Su/RH7t3/x0skPBnShjrf6y3++v41g8Ssje9aH99Pxrm380L/0V/du/wDjrf8AmjiuSW/b1w+rq6WaDBjjxfpVatoRadbt06DLqq+LMNDHcNfKl3onPXMSZJRiT3kspJoTd6I48sSuUDkB1kfWlb4fotxNDKPlMRIL7fuUskPFnSlNbhq54OBcX/8AyH/ef/bWP5A4tt+c3J9d6MkGDOizWGNCOj+FxFuyLd4XLlzMxLyDIJ0EswOlE2zD0lK90lSf+0mlkmDi0LXS64Dby81dZ9oNJzrB0pt6VpCFvpMn1AilAsTQwRhTrTH0Yb490835c6Wpg0wdF21/DTm21J7RXhjTaysdrTHuMo1EOE+m/ZYQ7D0pUfJ7HvPjQ5H5Fh5XF/1CrHB9LjHLEO2qt2R2No5+fjUcm0EdMh6Q62G8FJ/7TVToldzXrROk21Gvqn/bV3iqZrTJ327k/wCG5+6hHRO8BdtHYbe4XR+FP7R+R66SmMLf/Zt9YNfPeNbt+xfgK7z0nvf0XEd0Ae+uC4wds6d3f3eVHB5Dl8H0fb4xavWc9l1dDuZgp66mGB8IrFnF9YMhDGTsASseDAAx4UHXj1tS727AV7hXO+UDMqyBm11IGwjnUV/j15j2YQSDlGo0jygGOXfWLg27s6IySjTVv3sv3ujODa4HKqrKZ7MKDAI7SiJgcxB5HTSouMWcKMhvPcuMo7IRmXTYZoILDTmaAvmYkszEkkmSTv4bCvNZ02pYK03f69foT6rCWC4hbByWbK2c0KHUKWAAgQSD5e7yqtevM2cszMeutjVmIjNtExyFD7U5hBg5hB7jO9WHaA+u1639s0TXTFF2xG49/Wbn7R/tGhuAPbaiHHz/AEq767/aNDMAe21di0YFp9jVLiPoJ66/Grr7GqOPPya+svxoAlvHQ/x/1Kdvydn5O961v4NSNdOh9v8AmU7fk89C96yf66HoBzBraagV6FcaxToy5XgFSYmNqi6Rly8ihG9hyazNJp4xcEw0/X7ta3w/FLpdBmOrJpy1aNfrpZI5l/VpuqY4TWZqFLk6jahxxriZJ8ICiNeehmrs7F2Fwa2oH/KLxE+3sj7qz/KDmNT7IHv0pWh0w6K2FVcHeLoGOhM1ZU0hm9erE1kUgMOgYQRINaWcKiElVgmAd+Ux8T76mr1Kwo8oqhxM9oeVEBQrjDdpfI0R2D0K/Stvkx6w++k4gU2dJzNv+8PvpPzzVsSMOPGj/Rkjw9u27b0ulqO9GG1H/vm3LnUvaK8MbUcjmyj+0M6e/cCpOEn5RjA9N9VOnobR3VXtGNRIH0k1HtQ7Vvwr9IxgH5R+0NPmfR7qU9oI6YUxtk9UxUT8ndmOXyTjbnrA076R+hmJNy9ajbrH+yDH/dXScHsK5pg1t4S8mWQhe9M6xplEQNtAKV+Cq8jj0mxI/N78Ha4qxMAzJ1HP0a5Bf1YnX3j8KfcfxBLlvEC24e2ly25gkkBusUHx5aVzDE3DnbU71XF1YpHberqdLVR3r6IpdmAEE+cch4/jVm0xEBgqi4rG28yjSJGVx2QecEjbzrM0pldk+IUef8A1ftYUOpjVtBGoBk/T2nwqNsfhbJCXWQ3SwXqyy6tA7QMxEn0m0nascRwS3V7d0Ya00hltvbHWCNn0Kn6p8dKiUu6oFHqz3801Ym41xpMFEMdWpHOPpa+lMjlW13CqlkW72IUqjW8pkvcQ5hC6akaAayd9arcP4kgizhw6WkTSWYlvRGxMAanageJfS7+0t/bqHxdttmi5HVCr0g/rV39o/wAaFYBu21E+PN/Sbv7RvuoPgG7ZruWjlCLnQ1Rxp+T/ALy/EUSs4drhMaAbsdh+J7gNTU2I4AxTV8okEEiD7pqXJI0jxynpFHDYN7pKWxrBJJ0CjPux5CnzojYS2l1LZLegWf6ROfYclHL66ECyq2urUdWrbAGWck+m7Ebbxy7qvcMvthwVAVi2URJJ0kbAeNDmg/t+R+ArxLEOrhUYL2QToTMkjlHdVXrCw+UcMdY0iPYTUeJxRdhKjOQFAU6aE8+cTHiZjaTDcdgQsKSTAAMmfdUZImX9LKaosFR9KsPbYr2M3a0VgGjzn+OVRFtcqgkjeBI8x4VcwuLEJbhpVdoG/dvuTlA8YpqjD+1a8MLPcyW53iB7yBP10rLxmfmMxiJECTvoBO/dJ3ou+NL50RQQD6WbuOhiKE4XAW5ZXLEAHYiNDMREQNTG2m1DkqOlcE13RsnFQdMh7vSB19gPcfdtWl7jCqIyEaTJImQQI0n6QHsrwwtthJIXllk+exOo022oZxFANVn0Y255lOgGvjSdUax4nGXZcTpGwjLniSNH08eUVt/Oa5zz+WckjzEUvazsfht8faKxrG0eQ2PfH3ips6MYh1+kNw6zc/xIH1D40d6JcZuXbhtmSuUsczFiCI2Pd7/ZSJqTt7yOURr9etF+jeNazcLgKSVywdBqTJ0PlQTyRTjSOpCtqWf5xXFjPaUCdw5+GX76sN0h7WUWtxIJeAQdj6P8Gmc3oy9g+KCceaGXyP3Vi10hAcJcQID87NMHxECBUfSN+0nkfuojsmcHHYrdI2m17RSmiBuajzMD30zcff5I+Y/ClbDagg/xo1VN0rJgrdG/5rppcT2GfgKI8IxVu0wDuJ7lOu52nzoHiMXlYhRsYE7kkA/wKJYvi5u2bdoWwqCCBOpiZI2HjNZpy6bKaWkO2GvK/aUz4r2XHmvOp+F/pGOh7b67H0e7upd4RxRQVt3Ax0GVmgEbaSNcxn6vEAnuE3AXJme3c3EN6JFNyTaoiOmNeB2Fcm6RXsrq0TD3DHf2q6xgPRFco6WIMttgNzdJ8SHj2cqPuX4Zf2sBWOLsnWIFhbgUN2vokwdv7Te81FcwFomevT3j8agcCQeXOtuuH6tP3CfrzVqQd94t0aS6mZEC3V1ADQp0ggfQBHID3b0NTgptoy4i4LdnMs2bedkJncztrB0JM61f4rx5hNu2QT2TnXQeIlXPumgFxjcc3HMsYk+Qj7qwxvs6FytRxLNl8PYzDC2EUbLc7cxprDyRry02odxXFPcbNcMmABvA8gTVm4OyDyqhjbdy4AbNtrirmLgAywCNCjuOaNDFV0tmOwc2KCAkswA3KhzG30ATWRi1dLoQkgPaMmdVa5o2u4PfU1u0+dQ9t3bMFZBacgBtD2xCkCQdzsZjQVfxrphSnWXSXIcpbtyg1ZQcxVgIzOOXfA0mm6aoFaYl8cP9Iu+ufgKD4A9ujHHh8vdMfO+4UDw05tPGtlogYsTxcCUS0gCkhZLkbwSVBEkxvPwrdOKSRASfJzEAn5ximJMDghbL3LdrXUnOswdSSS2nvpSfAstxmQTbDPkYMDKa5SIOukVlKNLZ6HHyRcWlapEmM4xcZmHZBzHUKCdDHzpH1VZw3FWLgAjxhAunODuKZXx+BVTnFptdfkzOU/3JnypMsW1W5mDoVloALTGpGhHdScUlscZqSfTXRYxPGnYkAKhncKCYGkQ0iIEVaw3GWz9nIey50SNlPOj7YrAKpW51BkkMQokDzygz5a0p8EtqL9sO9sgkgjNvIO8iIpuCXkIzTi+mq/clPGnYqQEUTrpmnzza1atcauSSpWF7RhAswjmD3wQp8xTBxLC4MWWQWrQuMjhGXJpcg5QCDJJMaAHel3guDNu6vWABTpsWE5W3EeNDil1YepGUW0v9FY8YuMVMqoB1AUGfOZMeUVNd4zcyNkYCIMhY5PoZ3FMvGzhWslAtoXGUhCFyEvHZCmASdtPGljAYdrTh7nZWRqOXZceHfQ0k6sfqKUW6p+xTXjF0srNcYROiwOXNdj7atrxN2V5OYATDgEaeG1G+M8bs3LJshwSwGUkAwysDJIkLpOpNC+jyJbu9q4hBBEjUDRjqBPcfdRKMbqxZpxcqprwC0xksGIQAA6KiwfMVbGOPVuQFIBGhRQNSmpXmaYukmLw922bSG31hym22VhqGXNrl0GXNuaGdHmWw7G46gEHtKcwBlI7o2NEoxtKxeonHKu70BrfEDmkhAI2Fu2de/USPf7KsHirrbZkiM2WMqjSAZiImSffRzpRxOxiUyIydYCpRyDovzgWiBPdJ5VV6MXUs5zcuKBM5lMj5uhMihxjdWNzTjlj3egLb4xcLFi3KIUJ9kgirF3jFwW1OadWAkLoJPICKL9KeIW8SFS2yB1fMGMgZMpEZ8sTJXsyfqrboxct2lIuOuhGoBYGSxI0HdG9DjG6sHyLFSru9ACzxZxJZyZ2hUIHvGlNHD8Y1zDWmcyQ91R5ArAjloaG9KL9rEMvVm2rpmDGGWVMFe0UAbnoJiazgM1vCooKk9Zd5yDoppOkyOaSnxppUyPpA/wAkfWT7QpdttE5QSSVAA7zI++i/ErztbIYACR38iD30LtIUYE94IJGmneOXnTlJNUckE0wYMMxcjYktv4Eg6H3Vbxl5jkaII0iOzptB/jajOGtI4JaFbMHAjUkAbtzGm1D7lwLnXUiSdRpJMx4jw03rLJSe9Fzg6NsPjUSGRixgAggwNBp4bEb+FOHRjGZlXM6liCxXnqpGYHu0ilnH2Ldu41vLlzqpGXkQW1AotwXCdrYFcirtzUk+7WjBJpoiOmjo+AMqK5h0ktzaXwLsPJnII+B9ldK4S3YHtrnXELDXCtsfOVwNuUvz8vrqvuX4Y/tFG6kNk8J94q5h27I120qHGJF1l7tPdoa0K1oSdSQVFcvdhshUvqFBYCWiY8Ko4u/irdt7i2A9pCDcdWByrExl30DKxkDs+cjPBeNWrUXblm11JDAuBkeF+dbFzKbiRpIBaZ0qZWtFKns2w+PuKyNirLLYI9NXRlVtwbmX0Fn5093jDnhsXb7PVrnnRgIGQQSCxOxOwned4E0i2Utut282MvXMMgZ0t4a1cWRbGUBs6EBeRzaczWOJceuYrIo621h9mDOou3HWWmVHYTVQSI5jyhQcl9VX8DlKKf03XyFOlnTDLnsWVJYB0a4TBtPGmXSGPPQwI31pC4eVuLmVDna4uZu2WdoLHme8nl41axyAXJMCQngNgJk/WT9dTogVMlsCHlmKkHNy9JVAy7ch4zpWkEqaYTVU0C+OFnxF0oSVJWCJiCq7d9UcmXvmjt62F33gD3CKgSzPabbl/wA1PqC9MnHB8Vd7du2WVlQjtINCi8i1UxmS4LboFZWUEFYYGRvTD/OMWrfVossEVdiJgCNZIHuoZfupdfrXQh3KEkERm7IHztRoOXsqnjXR28cpVUo9V0Tp0Yv3e2ht5SFOrEHVR/ZoWxuLcNtyZVmVhpoRIIkb686NXOkbW06u2NVCqGMa5QImINUHvI7lyq53JJIYTmMknLl7+U0Squgg+Snkuq6Lx6J37hd1a1BZiJZgdSSB6ET7aD4c3OuVD6QdljTRoZY0oriektwKUTskGJIHzTGuWCffVfC4i3163CATnNxiGBOkudAnOCPbzolj4HF8mLyXjo9d4PiwnWXLTlV7RMhgANzAYmPGosAWuOVVRmKmANJPtNMeJ6WKwFtEbKwdGhpgMCJIZATudBFCcAtu1cVxmOWcwYR2crHTX+z9dEsfAs5OLyjT8Fa7wXE20Ny5ZIVdSZRhHeQCTFQWAbuZeysiNB3g++mHG9KRcXqkttkdWtsMwEBgRIkEsddpFBmyWpZM4Ig9oLtrtv8AClLG+h5zcXlGn4J8V0Zu2rZvC5bYKMxAkNl2kSINUeG23usyAyzKQCdvQuGrVzj9252WjKQVYHLqO6QvZG/I717AYtbdzrFRewCSAZBlWWDCjvPvqpON9CvkxdrvwZxnR/E2EN11XKsSVYGAdJIPLWoOG4Vr/WIGVScmpkDQ/wBkeNEcZ0le8DbZFFtlysJYbEEQZgbCquAxYslntrsNRIYGSO8EDnSbjaod8ji7Xfg9xTgF/Cp1jNbKyFJQkkTtIZRofCaj4VgnxCOqsobMNWkDZPoqfhUuK4+97sXAvVkAkExqNoMQB4Ryr2E4l1Ks9tFA2IlWBPY1BK6b0Nxy10DfJhTX1WR8U4NewoDu1shjllGJ1gmCGURoD7qiwGAuYhCqFc2cEliQNmHIGpMXxx7xi6EyTmgk+lBEhtognSKk4fxRbIdlQRIWB2gTvInzoeOXwEnyY9rsrcU4TfwgDPkhjEqcwneDmAIPParvCmzYcTv1jn3/APqocXxg4glbgBSc4BMHNBHORGp0HfVrhjKUKW1Ih53kbd4Hj8anka8ETcnCpLs0xKyINUTa5ESDRrFYUlZA1/jSqlq0SIO9YORikDrWFKpAJYAnLMGATMAEaa1rkY7DX2fUNqJ5Cu+3wrXq82oqG7d2XpAnGNcdsz6sBAJ/4FHeC4plAI0bmNxy08RWl1QTB3ry4eDInzrSM6fZnJWjoHCL2e2GiN9PwpG4heFu9a1BhTM6ASpWKceFcQYIqt21yjzGm4Pd4fCkDpC032/shR9/31sv8rM/FADHGbrv/aJ955VnJWY1NTW7JirJOjYbizXL91+Ht1maSwuqwtlYOYO2bZTquzQxGwAqni+D2cLb/Or9jDXcQ10QBcvZRnYmQrkrC76KYHlrJ0y489nCras4k3TcY2nCLJVWtkQvaJDk95ntGBpStwngqKvXXSbt0zCtDIni0kh233MDxI0FHronT7JOLdIcXiBctlyEcXPk0EAgyAo5xy8fDaiPRbgjtZtrcUoFL5pEHVjEeYPl51c4XwpRlu3NSwGh1DA8+TKdBqDz0pgW/lQDc6wJM6d5PLxNTlinZtJKTVCX0mwQOIyqsKEQAd8Zh/BquqC2iovIR7NeZ3ozxa52yTqSAP8AgeFDrdouZOgG/wCFc+d2auPSB5sFjJ2rcWcx10A5URupOgrUqBvSyFRbw3RmzcBuXDdEqp7JULsBp2PvpaxnDjaxBRQzKrpD5YkHKZPvrfG377FwesCSdlYCAd8wAPtmtEx7NCy2szJEEQfCulv6VSOiEeRJu7VDbh+CYNkD3LYJYKZFx51A1yhtPdSlewbW7rwD1aO4DmNVBIDE7bRW2KwOJbPmtXWSWOqOVgEkHbaoPzssGGsZHOrsw0U8jTk3WhQjKKbytUOx6P4OC1xCCzHUXHnWTMBjHtEUo4HhzfnAQghc1xM2h0KsoO+s6e+pMZw3FNnm1da3LHYkQCY0qHBY1usSCwIMjtudQNNz30SfwEFJJ/VfX6B7FdEFS01xb5LKjOFZQJyAkiQZB0oLwGyLtw2yTDAjTfVWGk89a9d49euZc11tCJhm1HMGTqPCpbXETmkE9kZtlXZl2K67TRJq+kVXLi1J2GuKdE7Nqy9xLlzrFQuEfIZC6kQFB5b0ucOQFiHAymJzaDnvNZfjN54DXnOuwaJ843HgZFbHGM5CgsT4qkzIiMomiUk30huPIoNSd/Iw8U4dg+obq1QXQuZSj6Zh806wQaC9H8B1l027i6Mp0neAeYNU7lu+AHuW7uVSDLLcAB9YjQ1PhnuXcyqGY5TCli0mD9LwmiTt6IxkoNZX8+wf6Q8Aw9uyzWlcXFyGMzMDmdVI1nbNOh5UH6OYMO7JcTskbMSoMRzkfGqmJ4ZftAXLlllUGJOo18QdKxgWd2YW17eWFC7/ADpI7jHwpt96Hi8Gsr+Ri6RcEwyWmawhF1chgO7BgxAI7RI0mdDyoZ0cwSszJdQRBOVzlnW3zkeNUMVh79oq91LoiQGbMN+QflP117DXLlzOLYctlEDMzH0tSCduXuobd3QYywrK/kOdJuFYcWx+boBcDgQrE5lIM6E94Goqn0b4YtzPbvW5jtZSxX6ImVI8edCsRhr1oi5ct3F+aGbMPHLn+uK3w7XLiv1auzCNFzOd1mOfOht5aE4yUKy87DfSjgVm3bD2FcMHClZdgQQTIzTqI5GNaz0PwRe3dBlWDLE6bg99LtxLtpg9y3cUkEAsGQkb6EjUVaw2JuEZkLDtHn4LAnnrPvqOT6uqoJKUYU3fydBw+Ekaie+o8RwOe0oFGOD4a51Nq5cXLdKEPI1MEgExzIAPtolYRf8AivJnytNoqPGmrE8cKkQw176H4rhBt6rqNokb0/38GNwNardWp0jzpLlYPjQlNwsuoP8A7H8d1aWMK6khx8KbrmEyGQNPD4isnCq48e7v8q0XKyXxgHChkIjVaF4/o5cuZ7yukGTlMgiNNwCDtTU+EKieX8e6oWkIwB5EEHyrphyujKXHYm3uheIyLctlLgIByqSGEidm0PsNV8LgW7QIIIaIYEHRV3FdM4Vcm2g5hVn3Uv8ASi/F4D+wPi1brkbMnCgUsW7mHS0otIbuXIsgEdW41Pz5K6ksSSK1a7btKHuDOVyxbB1AOzXCCWS35GW9ter1bcnWjFBuw5ZFZiCSJJAyjWY7PzRGwqG9iQATOnfzNer1cc5NnVBKgLcPWHMwIXx3NeivV6kyjy2Of8eVQ3UnnXq9QIMDpFatKVzHMIJBg8tQBPOlJ7Nt7huK5Ad2ZVKERnYwCRoNxWK9XW5NpFwjinQyDpbbtqAqvm0YiZ3UGAYEbilk4dGBaXXOGGoUgZ5HI6716vUOTaKjxqMevIzP0tS2pCo2aZIzbnmBKwKA4dLfXJc7YzXA0EAqMzSRpqefur1eocm0CgoJ17DhiuI4NbeS4bTA6N2D7DAWZmlLg+H6u6jM6NqoIVgT6S6xz1rFepyk+jOCxjKvYa+Kcew5stblXzo6AxMMVIQwJgAx2tIpRweH6u4rl0YKRIUiYzAGvV6icnZUVjFpDDj+lNprRsoHIdHQ9kSMwIzHUaCdgCaCcLNuzcD5i0BiQQy6BTMGPGs16iUnaNFwqKcVoIcU6RpeQ2QrZXXKYM5YIMkESduVDuEm3YudZLMADmB0MFHggx4Gs16k5OyfTUU4rQR4t0lS/bNhVYK6gTvlykNJGkzHIUM4S9uw7OSWGUAiCpEmQRoZ2rFepym7H6ainFaLvFePriVNmGCNlMjcFTOxGs99V+C3rVhnYlyuUzyIIZPDXccq9XqHJ5Ey40litdE3HOOJiV6rtBcwcMB6MAiCNzvuBFVeFWVAZQSYZTqI3I0g+Ver1Ju32KUVGLijrWGxeZFBGhUfD41WfEdW0HXzJ1FZr1eJKKyN1otJj1Pl57edQ426BLgQRv5d9er1JJWBFhsaGEOuvONtdiPCtXuKpJCke6sV6tFFWSzdsSrDx8hVXFkFXbQSNdNNBvArFerVSaXRDNOGmbaZW2VdR/zEVT4pZR7ksoJAAme72V6vVrGTIlFH/9k=" alt="Card image cap">        
                            </div>
                    </div>
                </div>
            </div>
            
            
            
            
            
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        
        	 function loadMore() {
                 var amount = document.getElementsByClassName("product").length;
                 $.ajax({
                     url: "/WebsiteBanGiay/load",
                     type: "get", //send it through get method
                     data: {
                         exits: amount
                     },
                     success: function (data) {
                         var row = document.getElementById("content");
                         row.innerHTML += data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
        	 function loadMoreNike() {
                 var amountNike = document.getElementsByClassName("productNike").length;
                 $.ajax({
                     url: "/WebsiteBanGiay/loadNike",
                     type: "get", //send it through get method
                     data: {
                         exitsNike: amountNike
                     },
                     success: function (dataNike) {
                         document.getElementById("contentNike").innerHTML += dataNike;
                         
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
        	 function loadMoreAdidas() {
                 var amountAdidas = document.getElementsByClassName("productAdidas").length;
                 $.ajax({
                     url: "/WebsiteBanGiay/loadAdidas",
                     type: "get", //send it through get method
                     data: {
                         exitsAdidas: amountAdidas
                     },
                     success: function (dataAdidas) {
                         document.getElementById("contentAdidas").innerHTML += dataAdidas;
                         
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
             function searchByName(param){
                 var txtSearch = param.value;
                 $.ajax({
                     url: "/WebsiteBanGiay/searchAjax",
                     type: "get", //send it through get method
                     data: {
                         txt: txtSearch
                     },
                     success: function (data) {
                         var row = document.getElementById("content");
                         row.innerHTML = data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
             function load(cateid){
             	 $.ajax({
                      url: "/WebsiteBanGiay/category",
                      type: "get", //send it through get method
                      data: {
                          cid: cateid
                      },
                      success: function (responseData) {
                          document.getElementById("content").innerHTML = responseData;
                      }
                  });
             }    
             function loadAmountCart(){
             	 $.ajax({
                      url: "/WebsiteBanGiay/loadAllAmountCart",
                      type: "get", //send it through get method
                      data: {
                          
                      },
                      success: function (responseData) {
                          document.getElementById("amountCart").innerHTML = responseData;
                      }
                  });
             }         
        </script>  
   
  		
  		 <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>
    
     <!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
  <!-- MDB Ecommerce JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
    </body>
</html>

