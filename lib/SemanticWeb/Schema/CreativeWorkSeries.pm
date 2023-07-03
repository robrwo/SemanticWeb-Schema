use utf8;

package SemanticWeb::Schema::CreativeWorkSeries;

# ABSTRACT: A CreativeWorkSeries in schema

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::Series /;


use MooX::JSON_LD 'CreativeWorkSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A CreativeWorkSeries in schema.org is a group of related items, typically but not necessarily of the same kind. CreativeWorkSeries are usually organized into some order, often chronological. Unlike L<SemanticWeb::Schema::ItemList> which is a general purpose data structure for lists of things, the emphasis with CreativeWorkSeries is on published materials (written e.g. books and periodicals, or media such as TV, radio and games).

Specific subtypes are available for describing L<SemanticWeb::Schema::TVSeries>, L<SemanticWeb::Schema::RadioSeries>, L<SemanticWeb::Schema::MovieSeries>, L<SemanticWeb::Schema::BookSeries>, L<SemanticWeb::Schema::Periodical> and L<SemanticWeb::Schema::VideoGameSeries>. In each case, the [[hasPart]] / [[isPartOf]] properties can be used to relate the CreativeWorkSeries to its parts. The general CreativeWorkSeries type serves largely just to organize these more specific and practical subtypes.

It is common for properties applicable to an item from the series to be usefully applied to the containing group. Schema.org attempts to anticipate some of these cases, but publishers should be free to apply properties of the series parts to the series as a whole wherever they seem appropriate.



=head1 ATTRIBUTES


=head2 C<end_date>

C<endDate>

The end date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A end_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_end_date>

A predicate for the L</end_date> attribute.

=cut

has end_date => (
    is        => 'rw',
    predicate => '_has_end_date',
    json_ld   => 'endDate',
);


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_issn>

A predicate for the L</issn> attribute.

=cut

has issn => (
    is        => 'rw',
    predicate => '_has_issn',
    json_ld   => 'issn',
);


=head2 C<start_date>

C<startDate>

The start date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A start_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_start_date>

A predicate for the L</start_date> attribute.

=cut

has start_date => (
    is        => 'rw',
    predicate => '_has_start_date',
    json_ld   => 'startDate',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Series>

=cut

1;
