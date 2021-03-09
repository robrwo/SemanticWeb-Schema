use utf8;

package SemanticWeb::Schema::ArchiveOrganization;

# ABSTRACT: An organization with archival holdings

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'ArchiveOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

An organization with archival holdings. An organization which keeps and
preserves archival material and typically makes it accessible to the
public.




=head1 ATTRIBUTES


=head2 C<archive_held>

C<archiveHeld>

Collection, L<fonds|https://en.wikipedia.org/wiki/Fonds>, or item held, kept or maintained by an L<SemanticWeb::Schema::ArchiveOrganization>.

A archive_held should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ArchiveComponent']>

=back

=head2 C<_has_archive_held>

A predicate for the L</archive_held> attribute.

=cut

has archive_held => (
    is        => 'rw',
    predicate => '_has_archive_held',
    json_ld   => 'archiveHeld',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
