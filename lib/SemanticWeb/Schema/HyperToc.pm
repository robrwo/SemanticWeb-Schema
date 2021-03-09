use utf8;

package SemanticWeb::Schema::HyperToc;

# ABSTRACT: A HyperToc represents a hypertext table of contents for complex media objects

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'HyperToc';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A HyperToc represents a hypertext table of contents for complex media objects, such as L<SemanticWeb::Schema::VideoObject>, L<SemanticWeb::Schema::AudioObject>. Items in the table of contents are indicated using the [[tocEntry]] property, and typed L<SemanticWeb::Schema::HyperTocEntry>. For cases where the same larger work is split into multiple files, [[associatedMedia]] can be used on individual L<SemanticWeb::Schema::HyperTocEntry> items.



=head1 ATTRIBUTES


=head2 C<associated_media>

C<associatedMedia>

A media object that encodes this CreativeWork. This property is a synonym
for encoding.


A associated_media should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=back

=head2 C<_has_associated_media>

A predicate for the L</associated_media> attribute.

=cut

has associated_media => (
    is        => 'rw',
    predicate => '_has_associated_media',
    json_ld   => 'associatedMedia',
);


=head2 C<toc_entry>

C<tocEntry>

Indicates a L<SemanticWeb::Schema::HyperTocEntry> in a L<SemanticWeb::Schema::HyperToc>.

A toc_entry should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HyperTocEntry']>

=back

=head2 C<_has_toc_entry>

A predicate for the L</toc_entry> attribute.

=cut

has toc_entry => (
    is        => 'rw',
    predicate => '_has_toc_entry',
    json_ld   => 'tocEntry',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
