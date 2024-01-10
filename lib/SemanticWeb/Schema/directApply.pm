use utf8;

package SemanticWeb::Schema::directApply;

# ABSTRACT: Indicates whether an [[url]] that is associated with a [[JobPosting]] enables direct application for the job

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'directApply';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether an [[url]] that is associated with a L<SemanticWeb::Schema::JobPosting> enables direct application for the job, via the posting website. A job posting is considered to have directApply of L<SemanticWeb::Schema::True> if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of L<SemanticWeb::Schema::False> is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
