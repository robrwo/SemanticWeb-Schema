use utf8;

package SemanticWeb::Schema::actionableFeedbackPolicy;

# ABSTRACT: For a [[NewsMediaOrganization]] or other news-related [[Organization]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'actionableFeedbackPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For a L<SemanticWeb::Schema::NewsMediaOrganization> or other news-related L<SemanticWeb::Schema::Organization>, a statement about public engagement activities (for news media, the newsroomâs), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
