use utf8;

package SemanticWeb::Schema::LockerDelivery;

# ABSTRACT: A DeliveryMethod in which an item is made available via locker.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'LockerDelivery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A DeliveryMethod in which an item is made available via locker.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
