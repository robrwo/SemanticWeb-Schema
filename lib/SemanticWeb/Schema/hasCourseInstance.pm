use utf8;

package SemanticWeb::Schema::hasCourseInstance;

# ABSTRACT: An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasCourseInstance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An offering of the course at a specific time and place or through specific
media or mode of study or to a specific section of students.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
