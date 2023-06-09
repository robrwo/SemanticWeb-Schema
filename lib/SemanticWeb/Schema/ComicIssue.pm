use utf8;

package SemanticWeb::Schema::ComicIssue;

# ABSTRACT: Individual comic issues are serially published as part of a larger series

use Moo;

extends qw/ SemanticWeb::Schema::PublicationIssue /;


use MooX::JSON_LD 'ComicIssue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

Individual comic issues are serially published as part of a larger series.
For the sake of consistency, even one-shot issues belong to a series
comprised of a single issue. All comic issues can be uniquely identified
by: the combination of the name and volume number of the series to which
the issue belongs; the issue number; and the variant description of the
issue (if any).




=head1 ATTRIBUTES


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


=head2 C<variant_cover>

C<variantCover>

A description of the variant cover for the issue, if the issue is a variant
printing. For example, "Bryan Hitch Variant Cover" or "2nd Printing
Variant".


A variant_cover should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_variant_cover>

A predicate for the L</variant_cover> attribute.

=cut

has variant_cover => (
    is        => 'rw',
    predicate => '_has_variant_cover',
    json_ld   => 'variantCover',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PublicationIssue>

=cut

1;
