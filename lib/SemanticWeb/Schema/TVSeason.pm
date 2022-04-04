use utf8;

package SemanticWeb::Schema::TVSeason;

# ABSTRACT: Season dedicated to TV broadcast and associated online delivery.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::CreativeWorkSeason /;


use MooX::JSON_LD 'TVSeason';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

Season dedicated to TV broadcast and associated online delivery.




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




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeason>

=cut

1;
