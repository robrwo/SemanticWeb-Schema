package SemanticWeb::Schema::SellAction;

# ABSTRACT: The act of taking money from a buyer in exchange for goods or services rendered

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'SellAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of taking money from a buyer in exchange for goods or services
rendered. An agent sells an object, product, or service to a buyer for a
price. Reciprocal of BuyAction.




=head1 ATTRIBUTES


=head2 C<buyer>



A sub property of participant. The participant/person/organization that
bought the object.


A buyer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has buyer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'buyer',
);


=head2 C<warranty_promise>

C<warrantyPromise>

The warranty promise(s) included in the offer.


A warranty_promise should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WarrantyPromise']>

=back

=cut

has warranty_promise => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'warrantyPromise',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
