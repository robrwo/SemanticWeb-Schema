use utf8;

package SemanticWeb::Schema::totalHistoricalEnrollment;

# ABSTRACT: The total number of students that have enrolled in the history of the course.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'totalHistoricalEnrollment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total number of students that have enrolled in the history of the
course.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
