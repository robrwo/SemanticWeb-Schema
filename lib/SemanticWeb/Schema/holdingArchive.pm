use utf8;

package SemanticWeb::Schema::holdingArchive;

# ABSTRACT: [[ArchiveOrganization]] that holds

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'holdingArchive';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

L<SemanticWeb::Schema::ArchiveOrganization> that holds, keeps or maintains the L<SemanticWeb::Schema::ArchiveComponent>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
