
# Proforma Invoice Preview

## Structure

`ProformaInvoicePreview`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `site_id` | `Float` | Optional | - |
| `customer_id` | `Float` | Optional | - |
| `subscription_id` | `Float` | Optional | - |
| `number` | `String` | Optional | - |
| `sequence_number` | `Integer` | Optional | - |
| `created_at` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `delivery_date` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `status` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `collection_method` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `payment_instructions` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `currency` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `consolidation_level` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `product_name` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `product_family_name` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `role` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `seller` | [`InvoiceSeller`](../../doc/models/invoice-seller.md) | Optional | Information about the seller (merchant) listed on the masthead of the invoice. |
| `customer` | [`InvoiceCustomer`](../../doc/models/invoice-customer.md) | Optional | Information about the customer who is owner or recipient the invoiced subscription. |
| `memo` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `billing_address` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Optional | - |
| `shipping_address` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Optional | - |
| `subtotal_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `discount_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `tax_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `total_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `credit_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `paid_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `refund_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `due_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `line_items` | [`Array<InvoiceLineItem>`](../../doc/models/invoice-line-item.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `discounts` | [`Array<ProformaInvoiceDiscount>`](../../doc/models/proforma-invoice-discount.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `taxes` | [`Array<ProformaInvoiceTax>`](../../doc/models/proforma-invoice-tax.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `credits` | [`Array<ProformaInvoiceCredit>`](../../doc/models/proforma-invoice-credit.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `payments` | [`Array<ProformaInvoicePayment>`](../../doc/models/proforma-invoice-payment.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `custom_fields` | [`Array<ProformaCustomField>`](../../doc/models/proforma-custom-field.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |
| `public_url` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid2",
  "site_id": 127.58,
  "customer_id": 51.9,
  "subscription_id": 206.22,
  "number": "number0"
}
```

