use utf8;

package SemanticWeb::Schema::GameAvailabilityEnumeration;

# ABSTRACT: For a [[VideoGame]]

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'GameAvailabilityEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

For a L<SemanticWeb::Schema::VideoGame>, such as used with a L<SemanticWeb::Schema::PlayGameAction>, an enumeration of the kind of game availability offered. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
