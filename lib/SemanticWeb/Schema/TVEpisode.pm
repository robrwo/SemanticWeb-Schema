package SemanticWeb::Schema::TVEpisode;

# ABSTRACT: A TV episode which can be part of a series or season.

use Moo;

extends qw/ SemanticWeb::Schema::Episode /;


use MooX::JSON_LD 'TVEpisode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has country_of_origin => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'countryOfOrigin',
    json_ld_serializer => \&_serialize_country_of_origin,
);

sub _serialize_country_of_origin { $_[0]->_serializer('country_of_origin') }


=head2 C<part_of_tv_series>

C<partOfTVSeries>

The TV series to which this episode or season belongs.


A part_of_tv_series should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TVSeries']>

=back

=cut

has part_of_tv_series => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'partOfTVSeries',
    json_ld_serializer => \&_serialize_part_of_tv_series,
);

sub _serialize_part_of_tv_series { $_[0]->_serializer('part_of_tv_series') }


=head2 C<subtitle_language>

C<subtitleLanguage>

=begin html

Languages in which subtitles/captions are available, in <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard format</a>.

=end html


A subtitle_language should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=back

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subtitleLanguage',
    json_ld_serializer => \&_serialize_subtitle_language,
);

sub _serialize_subtitle_language { $_[0]->_serializer('subtitle_language') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Episode>

=cut

1;
