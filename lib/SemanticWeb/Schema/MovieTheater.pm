use utf8;

package SemanticWeb::Schema::MovieTheater;

# ABSTRACT: A movie theater.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::EntertainmentBusiness /;


use MooX::JSON_LD 'MovieTheater';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

A movie theater.




=head1 ATTRIBUTES


=head2 C<screen_count>

C<screenCount>

The number of screens in the movie theater.


A screen_count should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_screen_count>

A predicate for the L</screen_count> attribute.

=cut

has screen_count => (
    is        => 'rw',
    predicate => '_has_screen_count',
    json_ld   => 'screenCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
