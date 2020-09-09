use utf8;

package SemanticWeb::Schema::RealEstateListing;

# ABSTRACT: A RealEstateListing is a listing that describes one or more real-estate Offer s (whose businessFunction is typically to lease out

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'RealEstateListing';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a class="localLink"
href="http://schema.org/RealEstateListing">RealEstateListing</a> is a
listing that describes one or more real-estate <a class="localLink"
href="http://schema.org/Offer">Offer</a>s (whose <a class="localLink"
href="http://schema.org/businessFunction">businessFunction</a> is typically
to lease out, or to sell). The <a class="localLink"
href="http://schema.org/RealEstateListing">RealEstateListing</a> type
itself represents the overall listing, as manifested in some <a
class="localLink" href="http://schema.org/WebPage">WebPage</a>.<p>

=end html




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

=begin html

<p>Length of the lease for some <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>, either particular
to some <a class="localLink" href="http://schema.org/Offer">Offer</a> or in
some cases intrinsic to the property.<p>

=end html


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
