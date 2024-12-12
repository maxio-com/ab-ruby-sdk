# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The `UnionTypeLookUp` class serves as a utility class for
  # storing and managing type combinator templates. It acts as a container for the templates
  # used in handling various oneof/anyof instances within the sdk.
  class UnionTypeLookUp
    include CoreLibrary
    # rubocop:disable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation
    def self.union_types
      {
        :UpdateComponentPricePointComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :UpdateComponentPricePointPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ReadComponentPricePointComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ReadComponentPricePointPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ArchiveComponentPricePointComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ArchiveComponentPricePointPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :CreateProductPricePointProductId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ListProductPricePointsInputProductId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :UpdateProductPricePointProductId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :UpdateProductPricePointPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ReadProductPricePointProductId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ReadProductPricePointPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ArchiveProductPricePointProductId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ArchiveProductPricePointPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :CreateUsageComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :ListUsagesInputComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :InvoiceEvent => AnyOf.new(
          [
            LeafType.new(ApplyCreditNoteEvent, UnionTypeContext.new(
              discriminator_value: 'apply_credit_note',
              discriminator: 'event_type'
            )),
            LeafType.new(ApplyDebitNoteEvent, UnionTypeContext.new(
              discriminator_value: 'apply_debit_note',
              discriminator: 'event_type'
            )),
            LeafType.new(ApplyPaymentEvent, UnionTypeContext.new(
              discriminator_value: 'apply_payment',
              discriminator: 'event_type'
            )),
            LeafType.new(BackportInvoiceEvent, UnionTypeContext.new(
              discriminator_value: 'backport_invoice',
              discriminator: 'event_type'
            )),
            LeafType.new(ChangeChargebackStatusEvent, UnionTypeContext.new(
              discriminator_value: 'change_chargeback_status',
              discriminator: 'event_type'
            )),
            LeafType.new(ChangeInvoiceCollectionMethodEvent, UnionTypeContext.new(
              discriminator_value: 'change_invoice_collection_method',
              discriminator: 'event_type'
            )),
            LeafType.new(ChangeInvoiceStatusEvent, UnionTypeContext.new(
              discriminator_value: 'change_invoice_status',
              discriminator: 'event_type'
            )),
            LeafType.new(CreateCreditNoteEvent, UnionTypeContext.new(
              discriminator_value: 'create_credit_note',
              discriminator: 'event_type'
            )),
            LeafType.new(CreateDebitNoteEvent, UnionTypeContext.new(
              discriminator_value: 'create_debit_note',
              discriminator: 'event_type'
            )),
            LeafType.new(FailedPaymentEvent, UnionTypeContext.new(
              discriminator_value: 'failed_payment',
              discriminator: 'event_type'
            )),
            LeafType.new(IssueInvoiceEvent, UnionTypeContext.new(
              discriminator_value: 'issue_invoice',
              discriminator: 'event_type'
            )),
            LeafType.new(RefundInvoiceEvent, UnionTypeContext.new(
              discriminator_value: 'refund_invoice',
              discriminator: 'event_type'
            )),
            LeafType.new(RemovePaymentEvent, UnionTypeContext.new(
              discriminator_value: 'remove_payment',
              discriminator: 'event_type'
            )),
            LeafType.new(VoidInvoiceEvent, UnionTypeContext.new(
              discriminator_value: 'void_invoice',
              discriminator: 'event_type'
            )),
            LeafType.new(VoidRemainderEvent, UnionTypeContext.new(
              discriminator_value: 'void_remainder',
              discriminator: 'event_type'
            ))
          ],
          UnionTypeContext.new(
            is_array: true,
            is_optional: true
          )
        ),

        :AllocationQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :AllocationPreviousQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :AllocationPreviewItemQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :AllocationPreviewItemPreviousQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :InvoiceEventPayment => AnyOf.new(
          [
            LeafType.new(PaymentMethodApplePay, UnionTypeContext.new(
              discriminator_value: 'apple_pay',
              discriminator: 'type'
            )),
            LeafType.new(PaymentMethodBankAccount, UnionTypeContext.new(
              discriminator_value: 'bank_account',
              discriminator: 'type'
            )),
            LeafType.new(PaymentMethodCreditCard, UnionTypeContext.new(
              discriminator_value: 'credit_card',
              discriminator: 'type'
            )),
            LeafType.new(PaymentMethodExternal, UnionTypeContext.new(
              discriminator_value: 'external',
              discriminator: 'type'
            )),
            LeafType.new(PaymentMethodPaypal, UnionTypeContext.new(
              discriminator_value: 'paypal_account',
              discriminator: 'type'
            ))
          ]
        ),

        :CalendarBillingSnapDay => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ComponentAllocationChangeAllocatedQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ComponentPricePointAssignmentPricePoint => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CouponPayloadPercentage => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateAllocationPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :CreateComponentPricePointRequestPricePoint => AnyOf.new(
          [
            LeafType.new(CreateComponentPricePoint),
            LeafType.new(CreatePrepaidUsageComponentPricePoint)
          ]
        ),

        :CreateComponentPricePointsRequestPricePoints => AnyOf.new(
          [
            LeafType.new(CreateComponentPricePoint),
            LeafType.new(CreatePrepaidUsageComponentPricePoint)
          ],
          UnionTypeContext.new(
            is_array: true
          )
        ),

        :CreateInvoiceCouponPercentage => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceCouponAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceCouponProductFamilyId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemQuantity => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemUnitPrice => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemProductId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemComponentId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemProductPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoicePaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateMetafieldsRequestMetafields => OneOf.new(
          [
            LeafType.new(CreateMetafield),
            LeafType.new(CreateMetafield, UnionTypeContext.new(
              is_array: true
            ))
          ]
        ),

        :CreateMultiInvoicePaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :CreateOrUpdateSegmentPriceUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :CreatePaymentProfileExpirationMonth => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreatePaymentProfileExpirationYear => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty1Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty2Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty3Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty4Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionOfferId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionComponentComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionComponentAllocatedQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionComponentPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomerErrorResponseErrors => OneOf.new(
          [
            LeafType.new(CustomerError),
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            ))
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :DeductServiceCreditAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :EBBComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :EventEventSpecificData => OneOf.new(
          [
            LeafType.new(SubscriptionProductChange),
            LeafType.new(SubscriptionStateChange),
            LeafType.new(PaymentRelatedEvents),
            LeafType.new(RefundSuccess),
            LeafType.new(ComponentAllocationChange),
            LeafType.new(MeteredUsage),
            LeafType.new(PrepaidUsage),
            LeafType.new(DunningStepReached),
            LeafType.new(InvoiceIssued),
            LeafType.new(PendingCancellationChange),
            LeafType.new(PrepaidSubscriptionBalanceChanged),
            LeafType.new(ProformaInvoiceIssued),
            LeafType.new(SubscriptionGroupSignupEventData),
            LeafType.new(CreditAccountBalanceChanged),
            LeafType.new(PrepaymentAccountBalanceChanged),
            LeafType.new(PaymentCollectionMethodChanged),
            LeafType.new(ItemPricePointChanged),
            LeafType.new(CustomFieldValueChange)
          ],
          UnionTypeContext.new(
            is_nullable: true
          )
        ),

        :IssueServiceCreditAmount => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ]
        ),

        :MetafieldEnum => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            ))
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :MeteredComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :OnOffComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :PaymentProfileAttributesExpirationMonth => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PaymentProfileAttributesExpirationYear => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PaymentProfile => AnyOf.new(
          [
            LeafType.new(ApplePayPaymentProfile, UnionTypeContext.new(
              discriminator_value: 'apple_pay',
              discriminator: 'payment_type'
            )),
            LeafType.new(BankAccountPaymentProfile, UnionTypeContext.new(
              discriminator_value: 'bank_account',
              discriminator: 'payment_type'
            )),
            LeafType.new(CreditCardPaymentProfile, UnionTypeContext.new(
              discriminator_value: 'credit_card',
              discriminator: 'payment_type'
            )),
            LeafType.new(PaypalPaymentProfile, UnionTypeContext.new(
              discriminator_value: 'paypal_account',
              discriminator: 'payment_type'
            ))
          ]
        ),

        :PrepaidUsageComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PriceStartingQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :PriceEndingQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :PriceUnitPrice => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ]
        ),

        :QuantityBasedComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ReactivateSubscriptionRequestResume => OneOf.new(
          [
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)]),
            LeafType.new(ResumeOptions)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RefundConsolidatedInvoiceSegmentUids => OneOf.new(
          [
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            )),
            LeafType.new(String)
          ]
        ),

        :RefundInvoiceRequestRefund => AnyOf.new(
          [
            LeafType.new(RefundInvoice),
            LeafType.new(RefundConsolidatedInvoice)
          ]
        ),

        :RefundPrepaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :RenewalPreviewComponentComponentId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RenewalPreviewComponentPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty1Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty2Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty3Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty4Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionComponentAllocatedQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionCustomPricePriceInCents => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ]
        ),

        :SubscriptionCustomPriceInterval => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ]
        ),

        :SubscriptionCustomPriceTrialPriceInCents => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionCustomPriceTrialInterval => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionCustomPriceInitialChargeInCents => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionCustomPriceExpirationInterval => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupCreateErrorResponseErrors => OneOf.new(
          [
            LeafType.new(SubscriptionGroupMembersArrayError),
            LeafType.new(SubscriptionGroupSingleError),
            LeafType.new(String)
          ]
        ),

        :SubscriptionGroupCreditCardFullNumber => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupCreditCardExpirationMonth => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupCreditCardExpirationYear => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentComponentId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentAllocatedQuantity => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentUnitBalance => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdateMetafieldsRequestMetafields => OneOf.new(
          [
            LeafType.new(UpdateMetafield),
            LeafType.new(UpdateMetafield, UnionTypeContext.new(
              is_array: true
            ))
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdatePriceEndingQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdatePriceUnitPrice => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdatePriceStartingQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdateSubscriptionSnapDay => OneOf.new(
          [
            LeafType.new(SnapDay),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdateSubscriptionNetTerms => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UsageQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        )
      }
    end
    # rubocop:enable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation

    def self.get(name)
      UnionTypeLookUp.union_types[name]
    end
  end
end
