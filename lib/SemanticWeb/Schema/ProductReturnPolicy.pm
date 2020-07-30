use utf8;

package SemanticWeb::Schema::ProductReturnPolicy;

# ABSTRACT: A ProductReturnPolicy provides information about product return policies associated with an Organization or Product .

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ProductReturnPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A ProductReturnPolicy provides information about product return policies
associated with an <a class="localLink"
href="http://schema.org/Organization">Organization</a> or <a
class="localLink" href="http://schema.org/Product">Product</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<product_return_days>

C<productReturnDays>

The productReturnDays property indicates the number of days (from purchase)
within which relevant product return policy is applicable.


A product_return_days should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_product_return_days>

A predicate for the L</product_return_days> attribute.

=cut

has product_return_days => (
    is        => 'rw',
    predicate => '_has_product_return_days',
    json_ld   => 'productReturnDays',
);


=head2 C<product_return_link>

C<productReturnLink>

Indicates a Web page or service by URL, for product return.


A product_return_link should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_product_return_link>

A predicate for the L</product_return_link> attribute.

=cut

has product_return_link => (
    is        => 'rw',
    predicate => '_has_product_return_link',
    json_ld   => 'productReturnLink',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
