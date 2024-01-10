use utf8;

package SemanticWeb::Schema::workPresented;

# ABSTRACT: The movie presented during this event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workPresented';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The movie presented during this event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
