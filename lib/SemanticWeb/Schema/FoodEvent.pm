use utf8;

package SemanticWeb::Schema::FoodEvent;

# ABSTRACT: Event type: Food event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'FoodEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Food event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
