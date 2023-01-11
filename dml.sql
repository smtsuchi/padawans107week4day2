INSERT INTO customer(
    first_name,
    last_name,
    age,
    email
) VALUES (
    'Shoha',
    'Tsuchida',
    9001,
    'shohat@codingtemple.com'
);

SELECT * FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    email,
    age
) VALUES (
    'Brandt',
    'Carlson',
    'brandtc@codingtemple.com',
    90010
), (
    'Aubrey',
    'Plaza',
    'aubreyp@codingtemple.com',
    21
),('Nicole', 'Shannon', 'nicoles@codintemple.com',21);



INSERT INTO product (
    product_name,
    product_description,
    image_url,
    price
) VALUES(
    'Pillow Pet',
    'This is a cute and adorable pillow',
    'https://cdn11.bigcommerce.com/s-r7rkk91ha4/images/stencil/1280x1280/products/274/2035/Appa16_pet__54799.1665080252.jpg?c=1',
    19.99
);
SELECT * FROM product;
INSERT INTO product (
    product_name,
    image_url,
    price
) VALUES(
    'Snuggies',
    'https://cdn.asotvinc.com/pimg/3A952C98418741B9BD4C51027842FA79.jpg',
    19.99
);

INSERT INTO transactions (
    customer_id
) VALUES(1);

INSERT INTO sale(
    transaction_id,
    product_id
)VALUES(1,1),(1,3);

SELECT * FROM sale;



INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    age,
    email
) VALUES (
    9001,
    'Evan',
    'Shy',
    9001,
    'evans@codingtemple.com'
);
SELECT * FROM customer;
INSERT INTO customer(
    first_name,
    last_name,
    age,
    email
) VALUES (
    'Sam',
    'Davvit',
    9002,
    'samd@codingtemple.com'
);