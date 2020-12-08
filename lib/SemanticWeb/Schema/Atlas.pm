use utf8;

package SemanticWeb::Schema::Atlas;

# ABSTRACT: A collection or bound volume of maps

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Atlas';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

A collection or bound volume of maps, charts, plates or tables, physical or
in media form illustrating any subject.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
