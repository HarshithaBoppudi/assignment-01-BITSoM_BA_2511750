// OP1: 
db.products.insertMany([
  {
    product_id: "E101",
    name: "Smartphone X200",
    category: "Electronics",
    brand: "TechNova",
    price: 49999,
    specifications: {
      warranty_years: 2,
      voltage: "220V",
      battery: { capacity_mAh: 4500, type: "Li-ion" },
      features: ["5G", "Dual SIM", "128GB Storage"]
    },
    availability: { stock: 120, warehouse_location: "Mumbai" }
  },
  {
    product_id: "C205",
    name: "Men's Cotton Shirt",
    category: "Clothing",
    brand: "UrbanWear",
    price: 1299,
    attributes: {
      size_options: ["S", "M", "L", "XL"],
      color_options: ["Blue", "White", "Black"],
      material: "100% Cotton",
      care_instructions: ["Machine wash cold", "Do not bleach"]
    },
    availability: { stock: 250, warehouse_location: "Delhi" }
  },
  {
    product_id: "G309",
    name: "Organic Almonds Pack",
    category: "Groceries",
    brand: "NutriFresh",
    price: 799,
    details: {
      weight_grams: 500,
      expiry_date: "2026-12-15",
      nutritional_info: {
        calories: 576,
        protein_g: 21,
        fat_g: 49,
        carbohydrates_g: 22
      },
      certifications: ["FSSAI Approved", "Organic Certified"]
    },
    availability: { stock: 80, warehouse_location: "Hyderabad" }
  }
]);

// OP2: 
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: 
db.products.find({
  category: "Groceries",
  "details.expiry_date": { $lt: "2025-01-01" }
});

// OP4: 
db.products.updateOne(
  { product_id: "E101" },
  { $set: { discount_percent: 10 } }
);

// OP5: 
db.products.createIndex({ category: 1 });
// Why: Indexing the "category" field improves query performance when filtering
// products by category (e.g., Electronics, Clothing, Groceries). Without an index,
// MongoDB scans the entire collection; with an index, it can quickly locate matching documents.
