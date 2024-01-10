use utf8;

package SemanticWeb::Schema::availableFrom;

# ABSTRACT: When the item is available for pickup from the store

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availableFrom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

When the item is available for pickup from the store, locker, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
