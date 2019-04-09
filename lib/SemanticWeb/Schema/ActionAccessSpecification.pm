use utf8;

package SemanticWeb::Schema::ActionAccessSpecification;

# ABSTRACT: A set of requirements that a must be fulfilled in order to perform an Action.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ActionAccessSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

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

=cut

has availability_ends => (
    is        => 'rw',
    predicate => 1,
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

=cut

has availability_starts => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availabilityStarts',
);


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'category',
);


=head2 C<eligible_region>

C<eligibleRegion>

=begin html

The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
GeoShape for the geo-political region(s) for which the offer or delivery
charge specification is valid.<br/><br/> See also <a class="localLink"
href="http://schema.org/ineligibleRegion">ineligibleRegion</a>.

=end html


A eligible_region should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=back

=cut

has eligible_region => (
    is        => 'rw',
    predicate => 1,
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

=cut

has expects_acceptance_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'expectsAcceptanceOf',
);


=head2 C<requires_subscription>

C<requiresSubscription>

=begin html

Indicates if use of the media require a subscription (either paid or free).
Allowed values are <code>true</code> or <code>false</code> (note that an
earlier version had 'yes', 'no').

=end html


A requires_subscription should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaSubscription']>

=item C<Bool>

=back

=cut

has requires_subscription => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiresSubscription',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
