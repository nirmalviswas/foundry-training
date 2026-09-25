# Day 2 — Entity Relationship Diagram

```mermaid
erDiagram
  SUPPLIER ||--o{ PURCHASE_ORDER : issues
  PURCHASE_ORDER ||--o{ SHIPMENT : ships

  SUPPLIER {
    string supplier_id PK
    string supplier_name
    string region
    string contact_email
    string reliability_rating
  }
  PURCHASE_ORDER {
    string po_id PK
    string supplier_id FK
    string order_date
    string po_number
    string expected_delivery_date
    string status
  }
  SHIPMENT {
    string shipment_id PK
    string po_id FK
    string carrier
    int delay_days
    string destination
    string actual_delivery_date
  }
```

## Entity dictionary
- **Supplier**: a vendor company that fulfills purchase orders for goods.
- **Purchase Order**: a formal order placed with a supplier for a batch of goods.
- **Shipment**: a physical movement of goods against a purchase order, tracked by carrier and delay.
