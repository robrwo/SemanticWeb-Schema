use utf8;

package SemanticWeb::Schema::jobStartDate;

# ABSTRACT: The date on which a successful applicant for this job would be expected to start work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'jobStartDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date on which a successful applicant for this job would be expected to
start work. Choose a specific date in the future or use the
jobImmediateStart property to indicate the position is to be filled as soon
as possible.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
