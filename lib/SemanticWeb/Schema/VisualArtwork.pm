use utf8;

package SemanticWeb::Schema::VisualArtwork;

# ABSTRACT: A work of art that is primarily visual in character.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'VisualArtwork';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A work of art that is primarily visual in character.




=head1 ATTRIBUTES


=head2 C<art_edition>

C<artEdition>

The number of copies when multiple copies of a piece of artwork are
produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to
the total number of copies (in this example "20").


A art_edition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_art_edition>

A predicate for the L</art_edition> attribute.

=cut

has art_edition => (
    is        => 'rw',
    predicate => '_has_art_edition',
    json_ld   => 'artEdition',
);


=head2 C<art_medium>

C<artMedium>

The material used. (e.g. Oil, Watercolour, Acrylic, Linoprint, Marble,
Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut,
Pencil, Mixed Media, etc.)


A art_medium should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_art_medium>

A predicate for the L</art_medium> attribute.

=cut

has art_medium => (
    is        => 'rw',
    predicate => '_has_art_medium',
    json_ld   => 'artMedium',
);


=head2 C<artform>



e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage, Collage,
etc.


A artform should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_artform>

A predicate for the L</artform> attribute.

=cut

has artform => (
    is        => 'rw',
    predicate => '_has_artform',
    json_ld   => 'artform',
);


=head2 C<artist>



The primary artist for a work in a medium other than pencils or digital
line art--for example, if the primary artwork is done in watercolors or
digital paints.


A artist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_artist>

A predicate for the L</artist> attribute.

=cut

has artist => (
    is        => 'rw',
    predicate => '_has_artist',
    json_ld   => 'artist',
);


=head2 C<artwork_surface>

C<artworkSurface>

The supporting materials for the artwork, e.g. Canvas, Paper, Wood, Board,
etc.


A artwork_surface should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_artwork_surface>

A predicate for the L</artwork_surface> attribute.

=cut

has artwork_surface => (
    is        => 'rw',
    predicate => '_has_artwork_surface',
    json_ld   => 'artworkSurface',
);


=head2 C<colorist>



The individual who adds color to inked drawings.


A colorist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_colorist>

A predicate for the L</colorist> attribute.

=cut

has colorist => (
    is        => 'rw',
    predicate => '_has_colorist',
    json_ld   => 'colorist',
);


=head2 C<depth>



The depth of the item.


A depth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_depth>

A predicate for the L</depth> attribute.

=cut

has depth => (
    is        => 'rw',
    predicate => '_has_depth',
    json_ld   => 'depth',
);


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_height>

A predicate for the L</height> attribute.

=cut

has height => (
    is        => 'rw',
    predicate => '_has_height',
    json_ld   => 'height',
);


=head2 C<inker>



The individual who traces over the pencil drawings in ink after pencils are
complete.


A inker should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_inker>

A predicate for the L</inker> attribute.

=cut

has inker => (
    is        => 'rw',
    predicate => '_has_inker',
    json_ld   => 'inker',
);


=head2 C<letterer>



The individual who adds lettering, including speech balloons and sound
effects, to artwork.


A letterer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_letterer>

A predicate for the L</letterer> attribute.

=cut

has letterer => (
    is        => 'rw',
    predicate => '_has_letterer',
    json_ld   => 'letterer',
);


=head2 C<penciler>



The individual who draws the primary narrative artwork.


A penciler should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_penciler>

A predicate for the L</penciler> attribute.

=cut

has penciler => (
    is        => 'rw',
    predicate => '_has_penciler',
    json_ld   => 'penciler',
);


=head2 C<surface>



A material used as a surface in some artwork, e.g. Canvas, Paper, Wood,
Board, etc.


A surface should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_surface>

A predicate for the L</surface> attribute.

=cut

has surface => (
    is        => 'rw',
    predicate => '_has_surface',
    json_ld   => 'surface',
);


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_width>

A predicate for the L</width> attribute.

=cut

has width => (
    is        => 'rw',
    predicate => '_has_width',
    json_ld   => 'width',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
