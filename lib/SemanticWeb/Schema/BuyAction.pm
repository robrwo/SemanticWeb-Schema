use utf8;

package SemanticWeb::Schema::BuyAction;

# ABSTRACT: The act of giving money to a seller in exchange for goods or services rendered

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'BuyAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of giving money to a seller in exchange for goods or services
rendered. An agent buys an object, product, or service from a seller for a
price. Reciprocal of SellAction.




=head1 ATTRIBUTES


=head2 C<seller>



An entity which offers (sells / leases / lends / loans) the services /
goods. A seller may also be a provider.


A seller should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_seller>

A predicate for the L</seller> attribute.

=cut

has seller => (
    is        => 'rw',
    predicate => '_has_seller',
    json_ld   => 'seller',
);


=head2 C<vendor>



'vendor' is an earlier term for 'seller'.


A vendor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_vendor>

A predicate for the L</vendor> attribute.

=cut

has vendor => (
    is        => 'rw',
    predicate => '_has_vendor',
    json_ld   => 'vendor',
);


=head2 C<warranty_promise>

C<warrantyPromise>

The warranty promise(s) included in the offer.


A warranty_promise should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WarrantyPromise']>

=back

=head2 C<_has_warranty_promise>

A predicate for the L</warranty_promise> attribute.

=cut

has warranty_promise => (
    is        => 'rw',
    predicate => '_has_warranty_promise',
    json_ld   => 'warrantyPromise',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
