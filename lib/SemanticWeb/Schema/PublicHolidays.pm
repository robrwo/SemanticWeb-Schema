use utf8;

package SemanticWeb::Schema::PublicHolidays;

# ABSTRACT: This stands for any day that is a public holiday; it is a placeholder for all official public holidays in some particular location

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PublicHolidays';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This stands for any day that is a public holiday; it is a placeholder for all official public holidays in some particular location. While not technically a "day of the week", it can be used with L<SemanticWeb::Schema::OpeningHoursSpecification>. In the context of an opening hours specification it can be used to indicate opening hours on public holidays, overriding general opening hours for the day of the week on which a public holiday occurs.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
