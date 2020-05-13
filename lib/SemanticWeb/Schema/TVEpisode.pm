use utf8;

package SemanticWeb::Schema::TVEpisode;

# ABSTRACT: A TV episode which can be part of a series or season.

use Moo;

extends qw/ SemanticWeb::Schema::Episode /;


use MooX::JSON_LD 'TVEpisode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

A TV episode which can be part of a series or season.




=head1 ATTRIBUTES


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of the principal offices of the production company or
individual responsible for the movie or program.


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

=begin html

<p>Languages in which subtitles/captions are available, in <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard format</a>.<p>

=end html


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

=begin html

<p>An <a href="https://eidr.org/">EIDR</a> (Entertainment Identifier
Registry) <a class="localLink"
href="http://schema.org/identifier">identifier</a> representing at the most
general/abstract level, a work of film or television.<br/><br/> For
example, the motion picture known as "Ghostbusters" has a titleEIDR of
"10.5240/7EC7-228A-510A-053E-CBB8-J". This title (or work) may have several
variants, which EIDR calls "edits". See <a class="localLink"
href="http://schema.org/editEIDR">editEIDR</a>.<br/><br/> Since schema.org
types like <a class="localLink" href="http://schema.org/Movie">Movie</a>
and <a class="localLink" href="http://schema.org/TVEpisode">TVEpisode</a>
can be used for both works and their multiple expressions, it is possible
to use <a class="localLink"
href="http://schema.org/titleEIDR">titleEIDR</a> alone (for a general
description), or alongside <a class="localLink"
href="http://schema.org/editEIDR">editEIDR</a> for a more edit-specific
description.<p>

=end html


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
