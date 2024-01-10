use utf8;

package SemanticWeb::Schema::characterName;

# ABSTRACT: The name of a character played in some acting or performing role

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'characterName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The name of a character played in some acting or performing role, i.e. in a
PerformanceRole.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
