```html
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
    --bg:#020617;
    --card:#111827;
    --primary:#0a2540;
    --accent:#00d4ff;
    --accent2:#7c3aed;
    --text:#e5e7eb;
    --muted:#94a3b8;
    --radius:14px;
}

*{box-sizing:border-box;transition:all .25s ease;}
body{
    margin:0;
    font-family:Inter;
    background:linear-gradient(135deg,#020617,#0f172a);
    color:var(--text);
}

/* HEADER */
header{
    position:sticky;
    top:0;
    backdrop-filter:blur(10px);
    background:rgba(15,23,42,.7);
    padding:12px 20px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}
.brand{
    font-family:Poppins;
    font-size:20px;
}
.brand span{color:var(--accent);}

/* HERO */
.hero{
    text-align:center;
    padding:80px 20px;
    background:linear-gradient(135deg,rgba(0,0,0,.7),rgba(124,58,237,.6)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a') center/cover;
}
.hero h1{
    font-size:48px;
    background:linear-gradient(90deg,#00d4ff,#7c3aed);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}
.btn{
    padding:12px 20px;
    border:none;
    border-radius:999px;
    cursor:pointer;
}
.btn-primary{
    background:linear-gradient(135deg,#00d4ff,#7c3aed);
    color:white;
}
.btn-primary:hover{
    transform:translateY(-3px);
}

/* GRID */
.container{max-width:1200px;margin:auto;padding:20px;}
.grid{display:grid;gap:20px;}
.products{grid-template-columns:repeat(auto-fit,minmax(250px,1fr));}

/* PRODUCT */
.product{
    background:linear-gradient(145deg,#111827,#1f2937);
    border-radius:16px;
    overflow:hidden;
}
.product:hover{
    transform:translateY(-10px) scale(1.02);
    box-shadow:0 20px 40px rgba(0,0,0,.6);
}
.product img{width:100%;height:200px;object-fit:cover;}
.product-body{padding:12px;}
.price{font-weight:bold;}
.add-btn{
    width:100%;
    background:var(--primary);
    color:white;
    padding:10px;
    border:none;
    cursor:pointer;
}

/* CATEGORY */
.categories{grid-template-columns:repeat(auto-fit,minmax(150px,1fr));}
.cat-card{
    text-align:center;
    padding:20px;
    background:#1e293b;
    border-radius:12px;
}
.cat-card:hover{
    transform:scale(1.05);
    background:linear-gradient(135deg,#00d4ff20,#7c3aed20);
}

/* CART */
.cart-count{
    background:var(--accent);
    padding:4px 8px;
    border-radius:50%;
    box-shadow:0 0 10px #00d4ff;
}

/* FOOTER */
footer{
    text-align:center;
    padding:20px;
    color:var(--muted);
}
</style>
</head>

<body>

<header>
    <div class="brand">Nexus<span>Shop</span></div>
    <div>🛒 <span id="cartCount" class="cart-count">0</span></div>
</header>

<section class="hero">
    <h1>Premium Collection</h1>
    <p>Modern stylish products just for you</p>
    <button class="btn btn-primary">Shop Now</button>
</section>

<div class="container">

<h2>Categories</h2>
<div class="grid categories" id="categories"></div>

<h2>Products</h2>
<div class="grid products" id="products"></div>

</div>

<footer>© 2026 NexusShop</footer>

<script>
const categories=[
"Phones","Laptops","Fashion","Shoes"
];

const products=[
{id:1,title:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{id:2,title:"MacBook",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{id:3,title:"Shoes",price:120,img:"https://images.unsplash.com/photo-1542272604"},
{id:4,title:"Watch",price:300,img:"https://images.unsplash.com/photo-1529374255404"}
];

let cart=0;

function renderCategories(){
const el=document.getElementById("categories");
categories.forEach(c=>{
el.innerHTML+=`<div class="cat-card">${c}</div>`;
});
}

function renderProducts(){
const el=document.getElementById("products");
products.forEach(p=>{
el.innerHTML+=`
<div class="product">
<img src="${p.img}">
<div class="product-body">
<h4>${p.title}</h4>
<div class="price">$${p.price}</div>
<button class="add-btn" onclick="addToCart()">Add to Cart</button>
</div>
</div>`;
});
}

function addToCart(){
cart++;
document.getElementById("cartCount").innerText=cart;
}

renderCategories();
renderProducts();
</script>

</body>
</html>
```
