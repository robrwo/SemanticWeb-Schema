use utf8;

package SemanticWeb::Schema::archiveHeld;

# ABSTRACT: Collection, [fonds](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'archiveHeld';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Collection, L<fonds|https://en.wikipedia.org/wiki/Fonds>, or item held, kept or maintained by an L<SemanticWeb::Schema::ArchiveOrganization>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
