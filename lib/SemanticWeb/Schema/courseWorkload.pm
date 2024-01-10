use utf8;

package SemanticWeb::Schema::courseWorkload;

# ABSTRACT: The amount of work expected of students taking the course

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'courseWorkload';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount of work expected of students taking the course, often provided
as a figure per week or per month, and may be broken down by type. For
example, "2 hours of lectures, 1 hour of lab work and 3 hours of
independent study per week".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
