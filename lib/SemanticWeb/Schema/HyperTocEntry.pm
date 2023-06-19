use utf8;

package SemanticWeb::Schema::HyperTocEntry;

# ABSTRACT: A HyperToEntry is an item within a [[HyperToc]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'HyperTocEntry';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A HyperToEntry is an item within a L<SemanticWeb::Schema::HyperToc>, which represents a hypertext table of contents for complex media objects, such as L<SemanticWeb::Schema::VideoObject>, L<SemanticWeb::Schema::AudioObject>. The media object itself is indicated using [[associatedMedia]]. Each section of interest within that content can be described with a L<SemanticWeb::Schema::HyperTocEntry>, with associated [[startOffset]] and [[endOffset]]. When several entries are all from the same file, [[associatedMedia]] is used on the overarching L<SemanticWeb::Schema::HyperTocEntry>; if the content has been split into multiple files, they can be referenced using [[associatedMedia]] on each L<SemanticWeb::Schema::HyperTocEntry>.



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


=head2 C<toc_continuation>

C<tocContinuation>

A L<SemanticWeb::Schema::HyperTocEntry> can have a [[tocContinuation]] indicated, which is another L<SemanticWeb::Schema::HyperTocEntry> that would be the default next item to play or render.

A toc_continuation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HyperTocEntry']>

=back

=head2 C<_has_toc_continuation>

A predicate for the L</toc_continuation> attribute.

=cut

has toc_continuation => (
    is        => 'rw',
    predicate => '_has_toc_continuation',
    json_ld   => 'tocContinuation',
);


=head2 C<utterances>



Text of an utterances (spoken words, lyrics etc.) that occurs at a certain section of a media object, represented as a L<SemanticWeb::Schema::HyperTocEntry>.

A utterances should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_utterances>

A predicate for the L</utterances> attribute.

=cut

has utterances => (
    is        => 'rw',
    predicate => '_has_utterances',
    json_ld   => 'utterances',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
