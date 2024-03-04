
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
| `created_at` | `DateTime` | Optional | - |
| `delivery_date` | `Date` | Optional | - |
| `status` | [`ProformaInvoiceStatus`](../../doc/models/proforma-invoice-status.md) | Optional | - |
| `collection_method` | [`CollectionMethod`](../../doc/models/collection-method.md) | Optional | The type of payment collection to be used in the subscription. For legacy Statements Architecture valid options are - `invoice`, `automatic`. For current Relationship Invoicing Architecture valid options are - `remittance`, `automatic`, `prepaid`.<br>**Default**: `CollectionMethod::AUTOMATIC` |
| `payment_instructions` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `consolidation_level` | [`InvoiceConsolidationLevel`](../../doc/models/invoice-consolidation-level.md) | Optional | Consolidation level of the invoice, which is applicable to invoice consolidation.  It will hold one of the following values:<br><br>* "none": A normal invoice with no consolidation.<br>* "child": An invoice segment which has been combined into a consolidated invoice.<br>* "parent": A consolidated invoice, whose contents are composed of invoice segments.<br><br>"Parent" invoices do not have lines of their own, but they have subtotals and totals which aggregate the member invoice segments.<br><br>See also the [invoice consolidation documentation](https://chargify.zendesk.com/hc/en-us/articles/4407746391835). |
| `product_name` | `String` | Optional | - |
| `product_family_name` | `String` | Optional | - |
| `role` | [`ProformaInvoiceRole`](../../doc/models/proforma-invoice-role.md) | Optional | 'proforma' value is deprecated in favor of proforma_adhoc and proforma_automatic |
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
| `custom_fields` | [`Array<InvoiceCustomField>`](../../doc/models/invoice-custom-field.md) | Optional | - |
| `public_url` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "collection_method": "automatic",
  "uid": "uid6",
  "site_id": 196,
  "customer_id": 52,
  "subscription_id": 124,
  "number": 0
}
```

