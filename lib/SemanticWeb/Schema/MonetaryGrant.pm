use utf8;

package SemanticWeb::Schema::MonetaryGrant;

# ABSTRACT: A monetary grant.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Grant /;


use MooX::JSON_LD 'MonetaryGrant';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A monetary grant.




=head1 ATTRIBUTES


=head2 C<amount>



The amount of money.


A amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=head2 C<_has_amount>

A predicate for the L</amount> attribute.

=cut

has amount => (
    is        => 'rw',
    predicate => '_has_amount',
    json_ld   => 'amount',
);


=head2 C<funder>



A person or organization that supports (sponsors) something through some
kind of financial contribution.


A funder should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_funder>

A predicate for the L</funder> attribute.

=cut

has funder => (
    is        => 'rw',
    predicate => '_has_funder',
    json_ld   => 'funder',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Grant>

=cut

1;
