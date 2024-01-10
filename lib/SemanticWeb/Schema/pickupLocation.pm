use utf8;

package SemanticWeb::Schema::pickupLocation;

# ABSTRACT: Where a taxi will pick up a passenger or a rental car can be picked up.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'pickupLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Where a taxi will pick up a passenger or a rental car can be picked up.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
