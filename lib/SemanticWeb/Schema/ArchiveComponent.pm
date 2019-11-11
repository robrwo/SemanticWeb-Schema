use utf8;

package SemanticWeb::Schema::ArchiveComponent;

# ABSTRACT: An intangible type to be applied to any archive content

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'ArchiveComponent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An intangible type to be applied to any archive content, carrying with it a
set of properties required to describe archival items and collections.




=head1 ATTRIBUTES


=head2 C<holding_archive>

C<holdingArchive>

=begin html

<p><a class="localLink"
href="http://schema.org/ArchiveOrganization">ArchiveOrganization</a> that
holds, keeps or maintains the <a class="localLink"
href="http://schema.org/ArchiveComponent">ArchiveComponent</a>.<p>

=end html


A holding_archive should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ArchiveOrganization']>

=back

=cut

has holding_archive => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'holdingArchive',
);


=head2 C<item_location>

C<itemLocation>

Current location of the item.


A item_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<Str>

=back

=cut

has item_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'itemLocation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
