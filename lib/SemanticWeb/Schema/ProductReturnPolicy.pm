use utf8;

package SemanticWeb::Schema::ProductReturnPolicy;

# ABSTRACT: A ProductReturnPolicy provides information about product return policies associated with an Organization or Product .

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ProductReturnPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A ProductReturnPolicy provides information about product return policies
associated with an <a class="localLink"
href="http://schema.org/Organization">Organization</a> or <a
class="localLink" href="http://schema.org/Product">Product</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<in_store_returns_offered>

C<inStoreReturnsOffered>

Are in-store returns offered?


A in_store_returns_offered should be one of the following types:

=over

=item C<Bool>

=back

=cut

has in_store_returns_offered => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inStoreReturnsOffered',
);


=head2 C<product_return_days>

C<productReturnDays>

The productReturnDays property indicates the number of days (from purchase)
within which relevant product return policy is applicable.


A product_return_days should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has product_return_days => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productReturnDays',
);


=head2 C<product_return_link>

C<productReturnLink>

Indicates a Web page or service by URL, for product return.


A product_return_link should be one of the following types:

=over

=item C<Str>

=back

=cut

has product_return_link => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productReturnLink',
);


=head2 C<refund_type>

C<refundType>

A refundType, from an enumerated list.


A refund_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RefundTypeEnumeration']>

=back

=cut

has refund_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'refundType',
);


=head2 C<return_fees>

C<returnFees>

Indicates (via enumerated options) the return fees policy for a
ProductReturnPolicy


A return_fees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnFeesEnumeration']>

=back

=cut

has return_fees => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'returnFees',
);


=head2 C<return_policy_category>

C<returnPolicyCategory>

A returnPolicyCategory expresses at most one of several enumerated kinds of
return.


A return_policy_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductReturnEnumeration']>

=back

=cut

has return_policy_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'returnPolicyCategory',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
