use utf8;

package SemanticWeb::Schema::ExhibitionEvent;

# ABSTRACT: Event type: Exhibition event, e

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'ExhibitionEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Exhibition event, e.g. at a museum, library, archive,
tradeshow, ...




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
