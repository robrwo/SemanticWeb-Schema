use utf8;

package SemanticWeb::Schema::seasonNumber;

# ABSTRACT: Position of the season within an ordered group of seasons.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'seasonNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Position of the season within an ordered group of seasons.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
