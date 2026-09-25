CREATE TABLE suppliers (
  supplier_id TEXT PRIMARY KEY,
  supplier_name TEXT,
  region TEXT
);

CREATE TABLE purchase_orders (
  po_id TEXT PRIMARY KEY,
  supplier_id TEXT,
  order_date TEXT,
  po_number TEXT
);

CREATE TABLE shipments (
  shipment_id TEXT PRIMARY KEY,
  po_id TEXT,
  carrier TEXT,
  delay_days INTEGER
);

INSERT INTO suppliers (supplier_id, supplier_name, region) VALUES
('SUP001', 'Orion Components',        'North America'),
('SUP002', 'FastFreight Logistics',   'North America'),
('SUP003', 'Meridian Manufacturing',  'Europe'),
('SUP004', 'Pacific Rim Supply Co.',  'Asia Pacific'),
('SUP005', 'Alden Industrial',        'Europe');

INSERT INTO purchase_orders (po_id, supplier_id, order_date, po_number) VALUES
('PO1001', 'SUP001', '2026-07-01', 'PO-2026-1001'),
('PO1002', 'SUP002', '2026-07-02', 'PO-2026-1002'),
('PO1003', 'SUP003', '2026-07-03', 'PO-2026-1003'),
('PO1004', 'SUP001', '2026-07-05', 'PO-2026-1004'),
('PO1005', 'SUP004', '2026-07-06', 'PO-2026-1005');

INSERT INTO shipments (shipment_id, po_id, carrier, delay_days) VALUES
('SHP2001', 'PO1001', 'FastFreight',    0),
('SHP2002', 'PO1002', 'FastFreight',    4),
('SHP2003', 'PO1003', 'BlueDart Cargo', 1),
('SHP2004', 'PO1004', 'Orion Logistics',0),
('SHP2005', 'PO1005', 'FastFreight',    2),
('SHP2006', 'PO1002', 'BlueDart Cargo', 3),
('SHP2007', 'PO1005', 'FastFreight',    0),
('SHP2008', 'PO1001', 'Orion Logistics',5);CREATE TABLE suppliers (
  supplier_id TEXT PRIMARY KEY,
  supplier_name TEXT,
  region TEXT
);

CREATE TABLE purchase_orders (
  po_id TEXT PRIMARY KEY,
  supplier_id TEXT,
  order_date TEXT,
  po_number TEXT
);

CREATE TABLE shipments (
  shipment_id TEXT PRIMARY KEY,
  po_id TEXT,
  carrier TEXT,
  delay_days INTEGER
);

INSERT INTO suppliers (supplier_id, supplier_name, region) VALUES
('SUP001', 'Orion Components',        'North America'),
('SUP002', 'FastFreight Logistics',   'North America'),
('SUP003', 'Meridian Manufacturing',  'Europe'),
('SUP004', 'Pacific Rim Supply Co.',  'Asia Pacific'),
('SUP005', 'Alden Industrial',        'Europe');

INSERT INTO purchase_orders (po_id, supplier_id, order_date, po_number) VALUES
('PO1001', 'SUP001', '2026-07-01', 'PO-2026-1001'),
('PO1002', 'SUP002', '2026-07-02', 'PO-2026-1002'),
('PO1003', 'SUP003', '2026-07-03', 'PO-2026-1003'),
('PO1004', 'SUP001', '2026-07-05', 'PO-2026-1004'),
('PO1005', 'SUP004', '2026-07-06', 'PO-2026-1005');

INSERT INTO shipments (shipment_id, po_id, carrier, delay_days) VALUES
('SHP2001', 'PO1001', 'FastFreight',    0),
('SHP2002', 'PO1002', 'FastFreight',    4),
('SHP2003', 'PO1003', 'BlueDart Cargo', 1),
('SHP2004', 'PO1004', 'Orion Logistics',0),
('SHP2005', 'PO1005', 'FastFreight',    2),
('SHP2006', 'PO1002', 'BlueDart Cargo', 3),
('SHP2007', 'PO1005', 'FastFreight',    0),
('SHP2008', 'PO1001', 'Orion Logistics',5);
