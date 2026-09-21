```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Shopping Store</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #eef2ff, #f8fafc);
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #1e293b;
        }

        /* Header */
        header {
            width: 100%;
            padding: 25px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.05);
        }

        .logo {
            font-size: 24px;
            font-weight: 700;
            color: #4f46e5;
        }

        .cart {
            background: #eef2ff;
            color: #4f46e5;
            padding: 10px 18px;
            border-radius: 30px;
            font-weight: 600;
        }

        /* Main */
        main {
            width: 100%;
            max-width: 1100px;
            padding: 60px 20px;
            text-align: center;
        }

        .heading {
            margin-bottom: 40px;
        }

        .heading h1 {
            font-size: 42px;
            margin-bottom: 10px;
            color: #111827;
        }

        .heading p {
            color: #64748b;
            font-size: 16px;
        }

        /* Product Card */
        .product {
            position: relative;
            max-width: 380px;
            margin: auto;
            padding: 25px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 24px;
            box-shadow: 0 20px 50px rgba(79, 70, 229, 0.12);
            transition: 0.3s ease;
            overflow: hidden;
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: 0 25px 60px rgba(79, 70, 229, 0.2);
        }

        /* Discount Badge */
        .badge {
            position: absolute;
            top: 18px;
            left: 18px;
            background: #ef4444;
            color: white;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: bold;
        }

        /* Product Image */
        .product-image {
            height: 230px;
            border-radius: 18px;
            background: linear-gradient(135deg, #eef2ff, #ddd6fe);
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 25px;
            font-size: 100px;
        }

        .product h2 {
            font-size: 26px;
            margin-bottom: 10px;
            color: #111827;
        }

        .description {
            color: #64748b;
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        /* Rating */
        .rating {
            color: #f59e0b;
            font-size: 18px;
            margin-bottom: 15px;
        }

        .rating span {
            color: #64748b;
            font-size: 13px;
            margin-left: 5px;
        }

        /* Price */
        .price {
            margin-bottom: 22px;
        }

        .current-price {
            font-size: 30px;
            font-weight: 700;
            color: #4f46e5;
        }

        .old-price {
            color: #94a3b8;
            text-decoration: line-through;
            margin-left: 8px;
        }

        /* Button */
        button {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 12px;
            background: linear-gradient(135deg, #4f46e5, #7c3aed);
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s ease;
        }

        button:hover {
            transform: scale(1.02);
            box-shadow: 0 10px 25px rgba(79, 70, 229, 0.3);
        }

        button:active {
            transform: scale(0.98);
        }

        /* Success Message */
        #message {
            margin-top: 20px;
            color: #16a34a;
            font-weight: 600;
            min-height: 24px;
        }

        /* Features */
        .features {
            display: flex;
            justify-content: center;
            gap: 25px;
            margin-top: 45px;
            flex-wrap: wrap;
        }

        .feature {
            background: white;
            padding: 15px 22px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            color: #475569;
            font-size: 14px;
        }

        /* Mobile */
        @media (max-width: 600px) {
            header {
                padding: 20px;
            }

            .heading h1 {
                font-size: 32px;
            }

            main {
                padding-top: 40px;
            }

            .product {
                width: 100%;
            }
        }
    </style>
</head>

<body>

    <header>
        <div class="logo">🛍️ ShopEase</div>
        <div class="cart">🛒 Cart <span id="cartCount">0</span></div>
    </header>

    <main>

        <div class="heading">
            <h1>Discover Your Next Favorite</h1>
            <p>Premium products at amazing prices</p>
        </div>

        <div class="product">

            <div class="badge">20% OFF</div>

            <div class="product-image">
                🖱️
            </div>

            <h2>Wireless Mouse</h2>

            <p class="description">
                Experience smooth and comfortable navigation with
                our stylish wireless mouse.
            </p>

            <div class="rating">
                ★★★★★
                <span>(128 reviews)</span>
            </div>

            <div class="price">
                <span class="current-price">₹799</span>
                <span class="old-price">₹999</span>
            </div>

            <button onclick="addToCart()">
                🛒 Add to Cart
            </button>

        </div>

        <p id="message"></p>

        <div class="features">
            <div class="feature">🚚 Free Delivery</div>
            <div class="feature">🔒 Secure Payment</div>
            <div class="feature">↩️ Easy Returns</div>
        </div>

    </main>

    <script>
        let cartCount = 0;

        function addToCart() {
            cartCount++;

            document.getElementById("cartCount").innerText = cartCount;

            const message = document.getElementById("message");

            message.innerHTML = "✓ Wireless Mouse added to your cart!";

            setTimeout(() => {
                message.innerHTML = "";
            }, 2500);
        }
    </script>

</body>
</html>
```
