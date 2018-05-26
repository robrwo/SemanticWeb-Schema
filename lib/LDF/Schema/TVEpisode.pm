package LDF::Schema::TVEpisode;

# ABSTRACT: A TV episode which can be part of a series or season.

use Moo;

extends qw/ LDF::Schema::Episode /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A TV episode which can be part of a series or season.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of the principal offices of the production company or
individual responsible for the movie or program.


A country_of_origin should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Country']>

=back

=cut

has country_of_origin => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<part_of_tv_series>

C<partOfTVSeries>

The TV series to which this episode or season belongs.


A part_of_tv_series should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::TVSeries']>

=back

=cut

has part_of_tv_series => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<subtitle_language>

C<subtitleLanguage>

=begin html

Languages in which subtitles/captions are available, in <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard format</a>.

=end html


A subtitle_language should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::Language']>

=back

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TVEpisode' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { countryOfOrigin => 'country_of_origin' },
      { partOfTVSeries => 'part_of_tv_series' },
      { subtitleLanguage => 'subtitle_language' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Episode>

=cut

1;
