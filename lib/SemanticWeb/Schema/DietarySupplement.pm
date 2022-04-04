use utf8;

package SemanticWeb::Schema::DietarySupplement;

# ABSTRACT: A product taken by mouth that contains a dietary ingredient intended to supplement the diet

use Moo;

extends qw/ SemanticWeb::Schema::Substance /;


use MooX::JSON_LD 'DietarySupplement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

A product taken by mouth that contains a dietary ingredient intended to
supplement the diet. Dietary ingredients may include vitamins, minerals,
herbs or other botanicals, amino acids, and substances such as enzymes,
organ tissues, glandulars and metabolites.




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


=head2 C<recommended_intake>

C<recommendedIntake>

Recommended intake of this supplement for a given population as defined by
a specific recommending authority.


A recommended_intake should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RecommendedDoseSchedule']>

=back

=head2 C<_has_recommended_intake>

A predicate for the L</recommended_intake> attribute.

=cut

has recommended_intake => (
    is        => 'rw',
    predicate => '_has_recommended_intake',
    json_ld   => 'recommendedIntake',
);


=head2 C<safety_consideration>

C<safetyConsideration>

Any potential safety concern associated with the supplement. May include
interactions with other drugs and foods, pregnancy, breastfeeding, known
adverse reactions, and documented efficacy of the supplement.


A safety_consideration should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_safety_consideration>

A predicate for the L</safety_consideration> attribute.

=cut

has safety_consideration => (
    is        => 'rw',
    predicate => '_has_safety_consideration',
    json_ld   => 'safetyConsideration',
);


=head2 C<target_population>

C<targetPopulation>

Characteristics of the population for which this is intended, or which
typically uses it, e.g. 'adults'.


A target_population should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_target_population>

A predicate for the L</target_population> attribute.

=cut

has target_population => (
    is        => 'rw',
    predicate => '_has_target_population',
    json_ld   => 'targetPopulation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Substance>

=cut

1;
