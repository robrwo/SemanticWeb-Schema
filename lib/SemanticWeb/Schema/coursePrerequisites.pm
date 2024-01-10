use utf8;

package SemanticWeb::Schema::coursePrerequisites;

# ABSTRACT: Requirements for taking the Course

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'coursePrerequisites';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Requirements for taking the Course. May be completion of another L<SemanticWeb::Schema::Course> or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using L<SemanticWeb::Schema::AlignmentObject>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
