use utf8;

package SemanticWeb::Schema::LiteraryEvent;

# ABSTRACT: Event type: Literary event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'LiteraryEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

Event type: Literary event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
