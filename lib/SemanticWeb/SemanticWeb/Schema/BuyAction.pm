package SemanticWeb::Schema::BuyAction;

# ABSTRACT: The act of giving money to a seller in exchange for goods or services rendered

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has seller => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vendor>



'vendor' is an earlier term for 'seller'.


A vendor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has vendor => (
    is        => 'rw',
    predicate => 1,
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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BuyAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'seller' => $self->curry::_serializer('seller'),
       'vendor' => $self->curry::_serializer('vendor'),
       'warrantyPromise' => $self->curry::_serializer('warranty_promise'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
