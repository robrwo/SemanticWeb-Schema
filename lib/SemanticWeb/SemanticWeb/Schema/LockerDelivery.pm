package SemanticWeb::Schema::LockerDelivery;

# ABSTRACT: A DeliveryMethod in which an item is made available via locker.

use Moo;

extends qw/ SemanticWeb::Schema::DeliveryMethod /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A DeliveryMethod in which an item is made available via locker.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LockerDelivery' }



=head1 SEE ALSO



L<SemanticWeb::Schema::DeliveryMethod>

=cut

1;
