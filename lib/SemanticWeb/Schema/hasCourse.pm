use utf8;

package SemanticWeb::Schema::hasCourse;

# ABSTRACT: A course or class that is one of the learning opportunities that constitute an educational / occupational program

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasCourse';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A course or class that is one of the learning opportunities that constitute
an educational / occupational program. No information is implied about
whether the course is mandatory or optional; no guarantee is implied about
whether the course will be available to everyone on the program.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
