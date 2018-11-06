use utf8;

package SemanticWeb::Schema::Festival;

# ABSTRACT: Event type: Festival.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'Festival';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

=head1 DESCRIPTION

Event type: Festival.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
