use utf8;

package SemanticWeb::Schema::ActionAccessSpecification;

# ABSTRACT: A set of requirements that a must be fulfilled in order to perform an Action.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ActionAccessSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

A set of requirements that a must be fulfilled in order to perform an
Action.




=head1 ATTRIBUTES


=head2 C<availability_ends>

C<availabilityEnds>

The end of the availability of the product or service included in the
offer.


A availability_ends should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_availability_ends>

A predicate for the L</availability_ends> attribute.

=cut

has availability_ends => (
    is        => 'rw',
    predicate => '_has_availability_ends',
    json_ld   => 'availabilityEnds',
);


=head2 C<availability_starts>

C<availabilityStarts>

The beginning of the availability of the product or service included in the
offer.


A availability_starts should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_availability_starts>

A predicate for the L</availability_starts> attribute.

=cut

has availability_starts => (
    is        => 'rw',
    predicate => '_has_availability_starts',
    json_ld   => 'availabilityStarts',
);


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_category>

A predicate for the L</category> attribute.

=cut

has category => (
    is        => 'rw',
    predicate => '_has_category',
    json_ld   => 'category',
);


=head2 C<eligible_region>

C<eligibleRegion>

=begin html

<p>The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or
the GeoShape for the geo-political region(s) for which the offer or
delivery charge specification is valid.<br/><br/> See also <a
class="localLink"
href="http://schema.org/ineligibleRegion">ineligibleRegion</a>.<p>

=end html


A eligible_region should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=head2 C<_has_eligible_region>

A predicate for the L</eligible_region> attribute.

=cut

has eligible_region => (
    is        => 'rw',
    predicate => '_has_eligible_region',
    json_ld   => 'eligibleRegion',
);


=head2 C<expects_acceptance_of>

C<expectsAcceptanceOf>

An Offer which must be accepted before the user can perform the Action. For
example, the user may need to buy a movie before being able to watch it.


A expects_acceptance_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=head2 C<_has_expects_acceptance_of>

A predicate for the L</expects_acceptance_of> attribute.

=cut

has expects_acceptance_of => (
    is        => 'rw',
    predicate => '_has_expects_acceptance_of',
    json_ld   => 'expectsAcceptanceOf',
);


=head2 C<ineligible_region>

C<ineligibleRegion>

=begin html

<p>The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or
the GeoShape for the geo-political region(s) for which the offer or
delivery charge specification is not valid, e.g. a region where the
transaction is not allowed.<br/><br/> See also <a class="localLink"
href="http://schema.org/eligibleRegion">eligibleRegion</a>.<p>

=end html


A ineligible_region should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=head2 C<_has_ineligible_region>

A predicate for the L</ineligible_region> attribute.

=cut

has ineligible_region => (
    is        => 'rw',
    predicate => '_has_ineligible_region',
    json_ld   => 'ineligibleRegion',
);


=head2 C<requires_subscription>

C<requiresSubscription>

=begin html

<p>Indicates if use of the media require a subscription (either paid or
free). Allowed values are <code>true</code> or <code>false</code> (note
that an earlier version had 'yes', 'no').<p>

=end html


A requires_subscription should be one of the following types:

=over

=item C<Bool>

=item C<InstanceOf['SemanticWeb::Schema::MediaSubscription']>

=back

=head2 C<_has_requires_subscription>

A predicate for the L</requires_subscription> attribute.

=cut

has requires_subscription => (
    is        => 'rw',
    predicate => '_has_requires_subscription',
    json_ld   => 'requiresSubscription',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
