# iLaser Stock

Bambu Lab filament inventory scanner and lookup (40 product lines — 369 filament SKUs plus 5 build plates).

Two sides, chosen when the page opens:

- **Filament** — cartons and spools, counted by quantity
- **Machines** — printers and AMS units, tracked by serial number

**Open it here:** https://jjjjf2001-ilaser.github.io/filament/

- **Scan** — live camera. Carton QR reads the SKU and adds 10 spools; a single spool barcode reads the EAN and adds 1. Switch between Scan IN and Scan OUT.
- **Find** — pick material and spool/refill, tap a colour swatch, and the carton-label SKU shows in large type.
- **Stock** — search, filter, adjust, export CSV (Barcode / Filament / Qty) or copy straight into a spreadsheet.
- **Log** — every movement.

Exports use the same naming as the iLaser Main Filament Inventory sheet
("PLA Basic w/ Spool - Black"). "Copy barcodes" gives one EAN per spool,
ready to paste into the Barcode column of the Scan IN / Scan OUT sheets.

Build plates are reference only: they are in Find and Stock, but the
"Copy barcodes" exports skip them, so they never reach the Google Sheet.

Stock is held in the browser's local storage — export a backup before
switching device or clearing data.

## Machines

46 Bambu models (printers, AMS, laser combos) with EAN, SKU and price.
Receiving goes model first: scan the carton EAN (or type the model),
then scan each Product SN. "Next model" starts the next type; the batch
list keeps every serial until you export and end it.

A serial can only be held once across all models, repeats are flagged,
and a Box SN (they start with B) is caught before it is counted as a
machine.
