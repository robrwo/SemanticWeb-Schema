use utf8;

package SemanticWeb::Schema::TVEpisode;

# ABSTRACT: A TV episode which can be part of a series or season.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Episode /;


use MooX::JSON_LD 'TVEpisode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A TV episode which can be part of a series or season.




=head1 ATTRIBUTES


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of origin of something, including products as well as creative  works such as movie and TV content.

In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of L<SemanticWeb::Schema::CreativeWork> it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.

In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.

A country_of_origin should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=back

=head2 C<_has_country_of_origin>

A predicate for the L</country_of_origin> attribute.

=cut

has country_of_origin => (
    is        => 'rw',
    predicate => '_has_country_of_origin',
    json_ld   => 'countryOfOrigin',
);


=head2 C<part_of_tv_series>

C<partOfTVSeries>

The TV series to which this episode or season belongs.


A part_of_tv_series should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TVSeries']>

=back

=head2 C<_has_part_of_tv_series>

A predicate for the L</part_of_tv_series> attribute.

=cut

has part_of_tv_series => (
    is        => 'rw',
    predicate => '_has_part_of_tv_series',
    json_ld   => 'partOfTVSeries',
);


=head2 C<subtitle_language>

C<subtitleLanguage>

Languages in which subtitles/captions are available, in [IETF BCP 47
standard format](http://tools.ietf.org/html/bcp47).


A subtitle_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=head2 C<_has_subtitle_language>

A predicate for the L</subtitle_language> attribute.

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => '_has_subtitle_language',
    json_ld   => 'subtitleLanguage',
);


=head2 C<title_eidr>

C<titleEIDR>

An L<EIDR|https://eidr.org/> (Entertainment Identifier Registry) [[identifier]] representing at the most general/abstract level, a work of film or television.

For example, the motion picture known as "Ghostbusters" has a titleEIDR of  "10.5240/7EC7-228A-510A-053E-CBB8-J". This title (or work) may have several variants, which EIDR calls "edits". See [[editEIDR]].

Since schema.org types like L<SemanticWeb::Schema::Movie>, L<SemanticWeb::Schema::TVEpisode>, L<SemanticWeb::Schema::TVSeason>, and L<SemanticWeb::Schema::TVSeries> can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.

A title_eidr should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_title_eidr>

A predicate for the L</title_eidr> attribute.

=cut

has title_eidr => (
    is        => 'rw',
    predicate => '_has_title_eidr',
    json_ld   => 'titleEIDR',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Episode>

=cut

1;
