<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Zendawa_Africa2.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!-- Navigation Bar -->
        <asp:Panel ID="navPanel" runat="server" CssClass="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="Homepage.aspx">BeautyFashion</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Homepage.aspx">Home</a>
                    </li>
                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Products
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Category.aspx?cat=1">Makeup</a>
                            <a class="dropdown-item" href="Category.aspx?cat=2">Skincare</a>
                            <a class="dropdown-item" href="Category.aspx?cat=3">Haircare</a>
                            <a class="dropdown-item" href="Category.aspx?cat=4">Fashion</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.aspx">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="About.aspx">About</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Account.aspx"><i class="fas fa-user"></i> Account</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Cart.aspx"><i class="fas fa-shopping-cart"></i> Cart</a>
                    </li>
                </ul>
            </div>
        </asp:Panel>

        <!-- Carousel -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="https://via.placeholder.com/1920x600?text=Beauty+Fashion+Carousel+1" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>New Spring Collection</h5>
                        <p>Discover our latest fashion trends.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://via.placeholder.com/1920x600?text=Beauty+Fashion+Carousel+2" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Top Skincare Products</h5>
                        <p>Find the perfect skincare for your routine.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://via.placeholder.com/1920x600?text=Beauty+Fashion+Carousel+3" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Exclusive Makeup Kits</h5>
                        <p>Enhance your beauty with our exclusive kits.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Categories Section -->
        <div class="row mt-5">
            <div class="col text-center">
                <h2>Product Categories</h2>
                <p>Explore our wide range of beauty and fashion products.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x300?text=Makeup" alt="Makeup">
                    <div class="card-body">
                        <h5 class="card-title">Makeup</h5>
                        <p class="card-text">Discover the latest in makeup.</p>
                        <a href="Category.aspx?cat=1" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x300?text=Skincare" alt="Skincare">
                    <div class="card-body">
                        <h5 class="card-title">Skincare</h5>
                        <p class="card-text">Find the perfect products for your skin.</p>
                        <a href="Category.aspx?cat=2" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3" style="left: 0px; top: 0px">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x300?text=Haircare" alt="Haircare">
                    <div class="card-body">
                        <h5 class="card-title">Haircare</h5>
                        <p class="card-text">Explore our range of haircare products.</p>
                        <a href="Category.aspx?cat=3" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x300?text=Fashion" alt="Fashion">
                    <div class="card-body">
                        <h5 class="card-title">Fashion</h5>
                        <p class="card-text">Stay trendy with the latest fashion items.</p>
                        <a href="Category.aspx?cat=4" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Featured Products Section -->
        <div class="row mt-5">
            <div class="col text-center">
                <h2>Featured Products</h2>
                <p>Check out some of our best products.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x400?text=Product+1" alt="Product 1">
                    <div class="card-body">
                        <h5 class="card-title">Product 1</h5>
                        <p class="card-text">$25.00</p>
                        <a href="Product.aspx?prod=1" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x400?text=Product+2" alt="Product 2">
                    <div class="card-body">
                        <h5 class="card-title">Product 2</h5>
                        <p class="card-text">$30.00</p>
                        <a href="Product.aspx?prod=2" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x400?text=Product+3" alt="Product 3">
                    <div class="card-body">
                        <h5 class="card-title">Product 3</h5>
                        <p class="card-text">$40.00</p>
                        <a href="Product.aspx?prod=3" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="https://via.placeholder.com/400x400?text=Product+4" alt="Product 4">
                    <div class="card-body">
                        <h5 class="card-title">Product 4</h5>
                        <p class="card-text">$50.00</p>
                        <a href="Product.aspx?prod=4" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Testimonials Section -->
        <div class="row mt-5">
            <div class="col text-center">
                <h2>Customer Testimonials</h2>
                <p>Hear from our happy customers.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">"Amazing quality and fast shipping!" - Emma Watson</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">"Absolutely love the products!" - Olivia Brown</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">"Great customer service and beautiful items." - Ava Johnson</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <footer class="mt-5 bg-light p-3">
            <div class="row">
                <div class="col-md-4">
                    <h5>Contact Us</h5>
                    <ul class="list-unstyled">
                        <li>Email: info@beautyfashion.com</li>
                        <li>Phone: (123) 456-7890</li>
                        <li>Address: 123 Fashion Ave, Trendy City</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="Homepage.aspx">Home</a></li>
                        <li><a href="Products.aspx">Products</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="Returns.aspx">Returns</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Follow Us</h5>
                    <ul class="list-unstyled">
                        <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</asp:Content>
