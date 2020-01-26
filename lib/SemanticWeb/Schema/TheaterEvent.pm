use utf8;

package SemanticWeb::Schema::TheaterEvent;

# ABSTRACT: Event type: Theater performance.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'TheaterEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Theater performance.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
