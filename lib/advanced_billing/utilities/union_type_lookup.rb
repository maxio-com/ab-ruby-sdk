# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The `UnionTypeLookUp` class serves as a utility class for
  # storing and managing type combinator templates. It acts as a container for the templates
  # used in handling various oneof/anyof instances within the sdk.
  class UnionTypeLookUp
    # rubocop:disable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation
    def self.union_types
      {
        :CreateProductPricePointProductId => OneOf.new(
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

        :SubscriptionGroup2 => OneOf.new(
          [
            LeafType.new(NestedSubscriptionGroup)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :ProductExpirationIntervalUnit => OneOf.new(
          [
            LeafType.new(ExtendedIntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :ProductTrialIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
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

        :CreateMetafieldsRequestMetafields => OneOf.new(
          [
            LeafType.new(CreateMetafield),
            LeafType.new(CreateMetafield, UnionTypeContext.new(
              is_array: true
            ))
          ]
        ),

        :CouponCompoundingStrategy => AnyOf.new(
          [
            LeafType.new(CompoundingStrategy)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateOrUpdateCouponCoupon => OneOf.new(
          [
            LeafType.new(CreateOrUpdatePercentageCoupon),
            LeafType.new(CreateOrUpdateFlatAmountCoupon)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateOrUpdatePercentageCouponPercentage => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
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

        :ComponentAllocationChangeAllocatedQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
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
            LeafType.new(SubscriptionGroupSignupSuccess),
            LeafType.new(SubscriptionGroupSignupFailure),
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

        :MeteredComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateComponentPricePointRequestPricePoint => AnyOf.new(
          [
            LeafType.new(CreateComponentPricePoint),
            LeafType.new(CreatePrepaidUsageComponentPricePoint)
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

        :PrepaidUsageComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
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

        :ComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :OnOffComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
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

        :ComponentPricePointIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :PaymentProfileResponsePaymentProfile => OneOf.new(
          [
            LeafType.new(BankAccountPaymentProfile),
            LeafType.new(CreditCardPaymentProfile)
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

        :RefundInvoiceRequestRefund => AnyOf.new(
          [
            LeafType.new(RefundInvoice),
            LeafType.new(RefundConsolidatedInvoice)
          ]
        ),

        :RefundConsolidatedInvoiceSegmentUids => OneOf.new(
          [
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            )),
            LeafType.new(String)
          ]
        ),

        :RefundSegmentUids => OneOf.new(
          [
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            )),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :InvoiceLineItemComponentCostData2 => OneOf.new(
          [
            LeafType.new(InvoiceLineItemComponentCostData)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :InvoiceEvent1PaymentMethod => OneOf.new(
          [
            LeafType.new(PaymentMethodApplePayType),
            LeafType.new(PaymentMethodBankAccountType),
            LeafType.new(PaymentMethodCreditCardType),
            LeafType.new(PaymentMethodExternalType),
            LeafType.new(PaymentMethodPaypalType)
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

        :SubscriptionComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :SubscriptionComponentPricePointType => OneOf.new(
          [
            LeafType.new(PricePointType)
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

        :ApplyPaymentEventDataPaymentMethod => OneOf.new(
          [
            LeafType.new(PaymentMethodApplePayType),
            LeafType.new(PaymentMethodBankAccountType),
            LeafType.new(PaymentMethodCreditCardType),
            LeafType.new(PaymentMethodExternalType),
            LeafType.new(PaymentMethodPaypalType)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RemovePaymentEventDataPaymentMethod => OneOf.new(
          [
            LeafType.new(PaymentMethodApplePayType),
            LeafType.new(PaymentMethodBankAccountType),
            LeafType.new(PaymentMethodCreditCardType),
            LeafType.new(PaymentMethodExternalType),
            LeafType.new(PaymentMethodPaypalType)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateMultiInvoicePaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :InvoiceEventEventData => AnyOf.new(
          [
            LeafType.new(ApplyCreditNoteEventData),
            LeafType.new(ApplyDebitNoteEventData),
            LeafType.new(ApplyPaymentEventData),
            LeafType.new(ChangeInvoiceCollectionMethodEventData),
            LeafType.new(IssueInvoiceEventData),
            LeafType.new(RefundInvoiceEventData),
            LeafType.new(RemovePaymentEventData),
            LeafType.new(VoidInvoiceEventData),
            LeafType.new(VoidRemainderEventData)
          ],
          UnionTypeContext.new(
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

        :AllocationPayment => OneOf.new(
          [
            LeafType.new(PaymentForAllocation)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
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

        :UsageQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
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

        :ComponentSPricePointAssignmentPricePoint => OneOf.new(
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

        :ReactivateSubscriptionRequestResume => OneOf.new(
          [
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)]),
            LeafType.new(ResumeOptions)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
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

        :IssueServiceCreditAmount => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ]
        ),

        :DeductServiceCreditAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :AddSubscriptionToAGroupGroup => OneOf.new(
          [
            LeafType.new(GroupSettings),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
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

        :CreateSubscriptionGroupSubscriptionId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ]
        ),

        :CreateOrUpdateSegmentPriceUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :RefundPrepaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
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
        )
      }
    end
    # rubocop:enable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation

    def self.get(name)
      UnionTypeLookUp.union_types[name]
    end
  end
end
