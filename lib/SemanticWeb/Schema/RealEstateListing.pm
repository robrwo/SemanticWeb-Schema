use utf8;

package SemanticWeb::Schema::RealEstateListing;

# ABSTRACT: A [[RealEstateListing]] is a listing that describes one or more real-estate [[Offer]]s (whose [[businessFunction]] is typically to lease out

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'RealEstateListing';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::RealEstateListing> is a listing that describes one or more real-estate L<SemanticWeb::Schema::Offer>s (whose [[businessFunction]] is typically to lease out, or to sell).
  The L<SemanticWeb::Schema::RealEstateListing> type itself represents the overall listing, as manifested in some L<SemanticWeb::Schema::WebPage>.



=head1 ATTRIBUTES


=head2 C<date_posted>

C<datePosted>

Publication date of an online listing.


A date_posted should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_date_posted>

A predicate for the L</date_posted> attribute.

=cut

has date_posted => (
    is        => 'rw',
    predicate => '_has_date_posted',
    json_ld   => 'datePosted',
);


=head2 C<lease_length>

C<leaseLength>

Length of the lease for some L<SemanticWeb::Schema::Accommodation>, either particular to some L<SemanticWeb::Schema::Offer> or in some cases intrinsic to the property.

A lease_length should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_lease_length>

A predicate for the L</lease_length> attribute.

=cut

has lease_length => (
    is        => 'rw',
    predicate => '_has_lease_length',
    json_ld   => 'leaseLength',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
