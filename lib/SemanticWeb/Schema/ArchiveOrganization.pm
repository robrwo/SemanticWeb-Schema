use utf8;

package SemanticWeb::Schema::ArchiveOrganization;

# ABSTRACT: An organization with archival holdings

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'ArchiveOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An organization with archival holdings. An organization which keeps and
preserves archival material and typically makes it accessible to the
public.




=head1 ATTRIBUTES


=head2 C<archive_held>

C<archiveHeld>

=begin html

<p>Collection, <a href="https://en.wikipedia.org/wiki/Fonds">fonds</a>, or
item held, kept or maintained by an <a class="localLink"
href="http://schema.org/ArchiveOrganization">ArchiveOrganization</a>.<p>

=end html


A archive_held should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ArchiveComponent']>

=back

=cut

has archive_held => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'archiveHeld',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
