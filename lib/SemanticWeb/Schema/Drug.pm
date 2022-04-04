use utf8;

package SemanticWeb::Schema::Drug;

# ABSTRACT: A chemical or biologic substance

use Moo;

extends qw/ SemanticWeb::Schema::Substance /;


use MooX::JSON_LD 'Drug';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A chemical or biologic substance, used as a medical therapy, that has a
physiological effect on an organism. Here the term drug is used
interchangeably with the term medicine although clinical knowledge make a
clear difference between them.




=head1 ATTRIBUTES


=head2 C<active_ingredient>

C<activeIngredient>

An active ingredient, typically chemical compounds and/or biologic
substances.


A active_ingredient should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_active_ingredient>

A predicate for the L</active_ingredient> attribute.

=cut

has active_ingredient => (
    is        => 'rw',
    predicate => '_has_active_ingredient',
    json_ld   => 'activeIngredient',
);


=head2 C<administration_route>

C<administrationRoute>

A route by which this drug may be administered, e.g. 'oral'.


A administration_route should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_administration_route>

A predicate for the L</administration_route> attribute.

=cut

has administration_route => (
    is        => 'rw',
    predicate => '_has_administration_route',
    json_ld   => 'administrationRoute',
);


=head2 C<alcohol_warning>

C<alcoholWarning>

Any precaution, guidance, contraindication, etc. related to consumption of
alcohol while taking this drug.


A alcohol_warning should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_alcohol_warning>

A predicate for the L</alcohol_warning> attribute.

=cut

has alcohol_warning => (
    is        => 'rw',
    predicate => '_has_alcohol_warning',
    json_ld   => 'alcoholWarning',
);


=head2 C<available_strength>

C<availableStrength>

An available dosage strength for the drug.


A available_strength should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugStrength']>

=back

=head2 C<_has_available_strength>

A predicate for the L</available_strength> attribute.

=cut

has available_strength => (
    is        => 'rw',
    predicate => '_has_available_strength',
    json_ld   => 'availableStrength',
);


=head2 C<breastfeeding_warning>

C<breastfeedingWarning>

Any precaution, guidance, contraindication, etc. related to this drug's use
by breastfeeding mothers.


A breastfeeding_warning should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_breastfeeding_warning>

A predicate for the L</breastfeeding_warning> attribute.

=cut

has breastfeeding_warning => (
    is        => 'rw',
    predicate => '_has_breastfeeding_warning',
    json_ld   => 'breastfeedingWarning',
);


=head2 C<clincal_pharmacology>

C<clincalPharmacology>

Description of the absorption and elimination of drugs, including their
concentration (pharmacokinetics, pK) and biological effects
(pharmacodynamics, pD).


A clincal_pharmacology should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_clincal_pharmacology>

A predicate for the L</clincal_pharmacology> attribute.

=cut

has clincal_pharmacology => (
    is        => 'rw',
    predicate => '_has_clincal_pharmacology',
    json_ld   => 'clincalPharmacology',
);


=head2 C<clinical_pharmacology>

C<clinicalPharmacology>

Description of the absorption and elimination of drugs, including their
concentration (pharmacokinetics, pK) and biological effects
(pharmacodynamics, pD).


A clinical_pharmacology should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_clinical_pharmacology>

A predicate for the L</clinical_pharmacology> attribute.

=cut

has clinical_pharmacology => (
    is        => 'rw',
    predicate => '_has_clinical_pharmacology',
    json_ld   => 'clinicalPharmacology',
);


=head2 C<dosage_form>

C<dosageForm>

A dosage form in which this drug/supplement is available, e.g. 'tablet',
'suspension', 'injection'.


A dosage_form should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_dosage_form>

A predicate for the L</dosage_form> attribute.

=cut

has dosage_form => (
    is        => 'rw',
    predicate => '_has_dosage_form',
    json_ld   => 'dosageForm',
);


=head2 C<dose_schedule>

C<doseSchedule>

A dosing schedule for the drug for a given population, either observed,
recommended, or maximum dose based on the type used.


A dose_schedule should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DoseSchedule']>

=back

=head2 C<_has_dose_schedule>

A predicate for the L</dose_schedule> attribute.

=cut

has dose_schedule => (
    is        => 'rw',
    predicate => '_has_dose_schedule',
    json_ld   => 'doseSchedule',
);


=head2 C<drug_class>

C<drugClass>

The class of drug this belongs to (e.g., statins).


A drug_class should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugClass']>

=back

=head2 C<_has_drug_class>

A predicate for the L</drug_class> attribute.

=cut

has drug_class => (
    is        => 'rw',
    predicate => '_has_drug_class',
    json_ld   => 'drugClass',
);


=head2 C<drug_unit>

C<drugUnit>

The unit in which the drug is measured, e.g. '5 mg tablet'.


A drug_unit should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_drug_unit>

A predicate for the L</drug_unit> attribute.

=cut

has drug_unit => (
    is        => 'rw',
    predicate => '_has_drug_unit',
    json_ld   => 'drugUnit',
);


=head2 C<food_warning>

C<foodWarning>

Any precaution, guidance, contraindication, etc. related to consumption of
specific foods while taking this drug.


A food_warning should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_food_warning>

A predicate for the L</food_warning> attribute.

=cut

has food_warning => (
    is        => 'rw',
    predicate => '_has_food_warning',
    json_ld   => 'foodWarning',
);


=head2 C<included_in_health_insurance_plan>

C<includedInHealthInsurancePlan>

The insurance plans that cover this drug.


A included_in_health_insurance_plan should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HealthInsurancePlan']>

=back

=head2 C<_has_included_in_health_insurance_plan>

A predicate for the L</included_in_health_insurance_plan> attribute.

=cut

has included_in_health_insurance_plan => (
    is        => 'rw',
    predicate => '_has_included_in_health_insurance_plan',
    json_ld   => 'includedInHealthInsurancePlan',
);


=head2 C<interacting_drug>

C<interactingDrug>

Another drug that is known to interact with this drug in a way that impacts
the effect of this drug or causes a risk to the patient. Note: disease
interactions are typically captured as contraindications.


A interacting_drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=head2 C<_has_interacting_drug>

A predicate for the L</interacting_drug> attribute.

=cut

has interacting_drug => (
    is        => 'rw',
    predicate => '_has_interacting_drug',
    json_ld   => 'interactingDrug',
);


=head2 C<is_available_generically>

C<isAvailableGenerically>

True if the drug is available in a generic form (regardless of name).


A is_available_generically should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_is_available_generically>

A predicate for the L</is_available_generically> attribute.

=cut

has is_available_generically => (
    is        => 'rw',
    predicate => '_has_is_available_generically',
    json_ld   => 'isAvailableGenerically',
);


=head2 C<is_proprietary>

C<isProprietary>

True if this item's name is a proprietary/brand name (vs. generic name).


A is_proprietary should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_is_proprietary>

A predicate for the L</is_proprietary> attribute.

=cut

has is_proprietary => (
    is        => 'rw',
    predicate => '_has_is_proprietary',
    json_ld   => 'isProprietary',
);


=head2 C<label_details>

C<labelDetails>

Link to the drug's label details.


A label_details should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_label_details>

A predicate for the L</label_details> attribute.

=cut

has label_details => (
    is        => 'rw',
    predicate => '_has_label_details',
    json_ld   => 'labelDetails',
);


=head2 C<legal_status>

C<legalStatus>

The drug or supplement's legal status, including any controlled substance
schedules that apply.


A legal_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugLegalStatus']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalEnumeration']>

=item C<Str>

=back

=head2 C<_has_legal_status>

A predicate for the L</legal_status> attribute.

=cut

has legal_status => (
    is        => 'rw',
    predicate => '_has_legal_status',
    json_ld   => 'legalStatus',
);


=head2 C<manufacturer>



The manufacturer of the product.


A manufacturer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_manufacturer>

A predicate for the L</manufacturer> attribute.

=cut

has manufacturer => (
    is        => 'rw',
    predicate => '_has_manufacturer',
    json_ld   => 'manufacturer',
);


=head2 C<maximum_intake>

C<maximumIntake>

Recommended intake of this supplement for a given population as defined by
a specific recommending authority.


A maximum_intake should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MaximumDoseSchedule']>

=back

=head2 C<_has_maximum_intake>

A predicate for the L</maximum_intake> attribute.

=cut

has maximum_intake => (
    is        => 'rw',
    predicate => '_has_maximum_intake',
    json_ld   => 'maximumIntake',
);


=head2 C<mechanism_of_action>

C<mechanismOfAction>

The specific biochemical interaction through which this drug or supplement
produces its pharmacological effect.


A mechanism_of_action should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_mechanism_of_action>

A predicate for the L</mechanism_of_action> attribute.

=cut

has mechanism_of_action => (
    is        => 'rw',
    predicate => '_has_mechanism_of_action',
    json_ld   => 'mechanismOfAction',
);


=head2 C<non_proprietary_name>

C<nonProprietaryName>

The generic name of this drug or supplement.


A non_proprietary_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_non_proprietary_name>

A predicate for the L</non_proprietary_name> attribute.

=cut

has non_proprietary_name => (
    is        => 'rw',
    predicate => '_has_non_proprietary_name',
    json_ld   => 'nonProprietaryName',
);


=head2 C<overdosage>



Any information related to overdose on a drug, including signs or symptoms,
treatments, contact information for emergency response.


A overdosage should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_overdosage>

A predicate for the L</overdosage> attribute.

=cut

has overdosage => (
    is        => 'rw',
    predicate => '_has_overdosage',
    json_ld   => 'overdosage',
);


=head2 C<pregnancy_category>

C<pregnancyCategory>

Pregnancy category of this drug.


A pregnancy_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugPregnancyCategory']>

=back

=head2 C<_has_pregnancy_category>

A predicate for the L</pregnancy_category> attribute.

=cut

has pregnancy_category => (
    is        => 'rw',
    predicate => '_has_pregnancy_category',
    json_ld   => 'pregnancyCategory',
);


=head2 C<pregnancy_warning>

C<pregnancyWarning>

Any precaution, guidance, contraindication, etc. related to this drug's use
during pregnancy.


A pregnancy_warning should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_pregnancy_warning>

A predicate for the L</pregnancy_warning> attribute.

=cut

has pregnancy_warning => (
    is        => 'rw',
    predicate => '_has_pregnancy_warning',
    json_ld   => 'pregnancyWarning',
);


=head2 C<prescribing_info>

C<prescribingInfo>

Link to prescribing information for the drug.


A prescribing_info should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_prescribing_info>

A predicate for the L</prescribing_info> attribute.

=cut

has prescribing_info => (
    is        => 'rw',
    predicate => '_has_prescribing_info',
    json_ld   => 'prescribingInfo',
);


=head2 C<prescription_status>

C<prescriptionStatus>

Indicates the status of drug prescription eg. local catalogs
classifications or whether the drug is available by prescription or
over-the-counter, etc.


A prescription_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugPrescriptionStatus']>

=item C<Str>

=back

=head2 C<_has_prescription_status>

A predicate for the L</prescription_status> attribute.

=cut

has prescription_status => (
    is        => 'rw',
    predicate => '_has_prescription_status',
    json_ld   => 'prescriptionStatus',
);


=head2 C<proprietary_name>

C<proprietaryName>

Proprietary name given to the diet plan, typically by its originator or
creator.


A proprietary_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_proprietary_name>

A predicate for the L</proprietary_name> attribute.

=cut

has proprietary_name => (
    is        => 'rw',
    predicate => '_has_proprietary_name',
    json_ld   => 'proprietaryName',
);


=head2 C<related_drug>

C<relatedDrug>

Any other drug related to this one, for example commonly-prescribed
alternatives.


A related_drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=head2 C<_has_related_drug>

A predicate for the L</related_drug> attribute.

=cut

has related_drug => (
    is        => 'rw',
    predicate => '_has_related_drug',
    json_ld   => 'relatedDrug',
);


=head2 C<rxcui>



The RxCUI drug identifier from RXNORM.


A rxcui should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_rxcui>

A predicate for the L</rxcui> attribute.

=cut

has rxcui => (
    is        => 'rw',
    predicate => '_has_rxcui',
    json_ld   => 'rxcui',
);


=head2 C<warning>



Any FDA or other warnings about the drug (text or URL).


A warning should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_warning>

A predicate for the L</warning> attribute.

=cut

has warning => (
    is        => 'rw',
    predicate => '_has_warning',
    json_ld   => 'warning',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Substance>

=cut

1;
