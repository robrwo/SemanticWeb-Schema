use utf8;

package SemanticWeb::Schema::GolfCourse;

# ABSTRACT: A golf course.

use Moo;

extends qw/ SemanticWeb::Schema::SportsActivityLocation /;


use MooX::JSON_LD 'GolfCourse';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A golf course.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
