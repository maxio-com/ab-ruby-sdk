
# Proforma Invoice

## Structure

`ProformaInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `site_id` | `Integer` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `number` | `Integer` | Optional | - |
| `sequence_number` | `Integer` | Optional | - |
| `created_at` | `String` | Optional | - |
| `delivery_date` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `collection_method` | `String` | Optional | - |
| `payment_instructions` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `consolidation_level` | `String` | Optional | - |
| `product_name` | `String` | Optional | - |
| `product_family_name` | `String` | Optional | - |
| `role` | `String` | Optional | - |
| `seller` | [`InvoiceSeller`](../../doc/models/invoice-seller.md) | Optional | Information about the seller (merchant) listed on the masthead of the invoice. |
| `customer` | [`InvoiceCustomer`](../../doc/models/invoice-customer.md) | Optional | Information about the customer who is owner or recipient the invoiced subscription. |
| `memo` | `String` | Optional | - |
| `billing_address` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Optional | - |
| `shipping_address` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Optional | - |
| `subtotal_amount` | `String` | Optional | - |
| `discount_amount` | `String` | Optional | - |
| `tax_amount` | `String` | Optional | - |
| `total_amount` | `String` | Optional | - |
| `credit_amount` | `String` | Optional | - |
| `paid_amount` | `String` | Optional | - |
| `refund_amount` | `String` | Optional | - |
| `due_amount` | `String` | Optional | - |
| `line_items` | [`Array<InvoiceLineItem>`](../../doc/models/invoice-line-item.md) | Optional | - |
| `discounts` | [`Array<ProformaInvoiceDiscount>`](../../doc/models/proforma-invoice-discount.md) | Optional | - |
| `taxes` | [`Array<ProformaInvoiceTax>`](../../doc/models/proforma-invoice-tax.md) | Optional | - |
| `credits` | [`Array<ProformaInvoiceCredit>`](../../doc/models/proforma-invoice-credit.md) | Optional | - |
| `payments` | [`Array<ProformaInvoicePayment>`](../../doc/models/proforma-invoice-payment.md) | Optional | - |
| `custom_fields` | [`Array<ProformaCustomField>`](../../doc/models/proforma-custom-field.md) | Optional | - |
| `public_url` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid6",
  "site_id": 196,
  "customer_id": 52,
  "subscription_id": 124,
  "number": 0
}
```

